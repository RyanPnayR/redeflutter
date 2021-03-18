import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/presentation/messaging/conversations_thread/conversation_desktop_screen.dart';
import 'package:redeflutter/presentation/messaging/conversations_thread/conversation_list_mobile_screen.dart';
import 'package:redeflutter/services/auth_service.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:redeflutter/util/responsive.dart';

import '../../../locator.dart';

class ConversationListScreen extends StatefulWidget {
  ConversationListScreen({Key key}) : super(key: key);

  @override
  _ConversationListScreenState createState() => _ConversationListScreenState();
}

class _ConversationListScreenState extends State<ConversationListScreen> {
  var authService = locator<AuthService>();
  var appModel = locator<AppModel>();
  GlobalKey<ScaffoldState> _conversationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    appModel.loading = true;

    authService
        .loadAccountAndNetworks()
        .then((value) => {
              setState(
                () {
                  appModel.loading = false;
                },
              ),
            })
        .onError((error, stackTrace) => {appModel.logout(context)});
  }

  @override
  Widget build(BuildContext context) {
    return appModel.loading
        ? Text('loading')
        : Responsive(
            desktop: DesktopConversationListScreen(),
            mobile: MobileConversationListScreen(),
            tablet: MobileConversationListScreen(),
          );
  }
}
