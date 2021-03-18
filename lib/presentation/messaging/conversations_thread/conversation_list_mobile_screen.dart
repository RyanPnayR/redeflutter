import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/presentation/common/sidebar/sidebar.dart';
import 'package:redeflutter/presentation/conversations_thread/conversations_list.dart';
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
        appBar: AppBar(
          backgroundColor: AppTheme.lightGray,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                child: Avatar(
                  size: 40,
                  url: NetworkImage(appModel.account.avatarUrl),
                ),
                onTap: () {
                  _mobileConversationKey.currentState.openDrawer();
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Messages',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
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
