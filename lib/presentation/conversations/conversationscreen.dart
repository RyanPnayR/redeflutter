import 'package:redeflutter/data/app_model.dart';
import "package:redeflutter/localization.dart";
import 'package:redeflutter/presentation/conversations/conversation_desktop_screen.dart';
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
  @override
  void initState() {
    super.initState();
    authService
        .loadAccountAndNetworks()
        .then((value) => {print('finished loading')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whiteGrey,
        bottomNavigationBar:
            !Responsive.isMobile(context) ? LoginFooter() : SizedBox.shrink(),
        appBar: Responsive.isMobile(context)
            ? AppBar(
                backgroundColor: AppTheme.lightGray,
                elevation: 0,
                centerTitle: true,
                title: Text(RedeappLocalizations.of(context).logIn,
                    style: TextStyle(color: Colors.black)),
              )
            : AppBar(
                toolbarHeight: 40,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/graphics/logo-redeapp.png",
                      height: 30,
                    ),
                    Text(
                      'Messages',
                      style: AppTheme.messageTextStyle,
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text('Help')),
                        TextButton(onPressed: () {}, child: Text('Sign Out')),
                      ],
                    ),
                  ],
                ),
              ),
        body: Responsive(
          desktop: DesktopConversationScreen(),
          mobile: DesktopConversationScreen(),
          tablet: DesktopConversationScreen(),
        ));
  }
}
