import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/presentation/conversations/conversation_list_item.dart';
import 'package:redeflutter/services/messaging_service.dart';
import 'package:redeflutter/data/app_model.dart';

class ConversationList extends StatefulWidget {
  ConversationList({Key key}) : super(key: key);

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  static const _pageSize = 20;
  var messagingService = locator<MessagingService>();
  var appModel = locator<AppModel>();
  final PagingController<int, Conversation> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await messagingService
          .getNetworks(page: pageKey + 1, pageSize: _pageSize)
          .onError((error, stackTrace) {
        appModel.logout(context);
        return;
      });
      final newItems =
          messagingService.conversationResponseToConversations(response);
      final isLastPage = response.data['next'] == null;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems, nextPageKey);
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
      RefreshIndicator(
        onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
        ),
        child: PagedListView<int, Conversation>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Conversation>(
            itemBuilder: (context, item, index) => ConversationListItem(
              conversation: item,
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
