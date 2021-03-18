import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/presentation/common/sidebar/sidebar.dart';
import 'package:redeflutter/presentation/common/title_bar.dart';
import 'package:redeflutter/presentation/messaging/conversations_thread/conversations_list.dart';
import '../../../theme.dart';

class MobileConversationListScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _mobileConversationKey = GlobalKey();
  var appModel = locator.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
        key: _mobileConversationKey,
        backgroundColor: AppTheme.drawerBackground,
        drawer: SafeArea(
          child: Drawer(
            child: Sidebar(),
          ),
        ),
        appBar: getTitleBar(
          title: 'Messages',
          automaticallyImplyLeading: false,
          titlebarFrontButton: InkWell(
            child: Avatar(
              size: 40,
              url: NetworkImage(appModel.account.avatarUrl),
            ),
            onTap: () {
              _mobileConversationKey.currentState.openDrawer();
            },
          ),
        ),
        body: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 4 : 6,
              child: ConversationList(),
            ),
          ],
        ));
  }
}
