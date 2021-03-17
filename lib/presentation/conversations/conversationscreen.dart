import 'package:redeflutter/data/app_model.dart';
import "package:redeflutter/localization.dart";
import 'package:redeflutter/presentation/conversations/conversation_desktop_screen.dart';
import 'package:redeflutter/presentation/conversations/conversation_mobile_screen.dart';
import 'package:redeflutter/services/auth_service.dart';
import 'package:redeflutter/theme.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:redeflutter/util/login_footer.dart';
import 'package:redeflutter/util/responsive.dart';

import '../../locator.dart';

class ConversationScreen extends StatefulWidget {
  ConversationScreen({Key key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
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
            desktop: DesktopConversationScreen(),
            mobile: MobileConversationScreen(),
            tablet: MobileConversationScreen(),
          );
  }
}
