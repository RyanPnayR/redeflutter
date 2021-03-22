import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/widgets/controller.dart';
import 'package:flutter_quill/widgets/editor.dart';
import 'package:flutter_quill/widgets/toolbar.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/presentation/messaging/conversation/message_thread_item.dart';
import 'package:redeflutter/presentation/messaging/conversations_thread/conversation_list_item.dart';
import 'package:redeflutter/presentation/messaging/conversation/conversation_screen.dart';
import 'package:redeflutter/services/messaging_service.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/theme.dart';

class MessageThread extends StatefulWidget {
  MessageThread({Key key}) : super(key: key);

  @override
  _MessageThreadState createState() => _MessageThreadState();
}

class _MessageThreadState extends State<MessageThread> {
  static const _pageSize = 20;
  var messagingService = locator<MessagingService>();
  var appModel = locator<AppModel>();
  final PagingController<int, Message> _pagingController =
      PagingController(firstPageKey: 1);
  QuillController _controller = QuillController.basic();

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      if (appModel.selectedConversation.id != null) {
        final response = await messagingService
            .getMessages(page: pageKey, pageSize: _pageSize)
            .onError((error, stackTrace) {
          appModel.logout(context);
          return;
        });
        final newItems =
            messagingService.messageResponseToConversations(response);
        final isLastPage = response.data['next'] == null;
        if (isLastPage) {
          _pagingController.appendLastPage(newItems);
        } else {
          final nextPageKey = pageKey + 1;
          _pagingController.appendPage(newItems, nextPageKey);
        }
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) =>
      // Don't worry about displaying progress or error indicators on screen; the
      // package takes care of that. If you want to customize them, use the
      // [PagedChildBuilderDelegate] properties.
      Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => Future.sync(
                () => _pagingController.refresh(),
              ),
              child: PagedListView<int, Message>(
                reverse: true,
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<Message>(
                  itemBuilder: (context, item, index) => InkWell(
                    onTap: () {},
                    child: MessageThreadItem(
                      message: item,
                      prevMessage: index < _pagingController.itemList.length - 1
                          ? _pagingController.itemList[index + 1]
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 5),
            color: AppTheme.messageEditorGrey,
            child: QuillToolbar.basic(
              controller: _controller,
            ),
          ),
          Container(
            color: AppTheme.messageEditorGrey,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  constraints: BoxConstraints(
                      minHeight: 50,
                      minWidth: double.infinity,
                      maxHeight: MediaQuery.of(context).size.height / 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent, width: 1.5),
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                  child: QuillEditor.basic(
                    controller: _controller,
                    readOnly: false, // true for view only mode
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppTheme.messageEditorGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
                    IconButton(icon: Icon(Icons.photo), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.photo_camera_front), onPressed: () {}),
                  ],
                ),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),
              ],
            ),
          ),
        ],
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
