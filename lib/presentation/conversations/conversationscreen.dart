import "package:redeflutter/localization.dart";
import 'package:redeflutter/presentation/conversations/conversation_desktop_screen.dart';
import 'package:redeflutter/theme.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:redeflutter/util/login_footer.dart';
import 'package:redeflutter/util/responsive.dart';

class ConversationScreen extends StatelessWidget {
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
            : null,
        body: Responsive(
          desktop: DesktopConversationScreen(),
          mobile: DesktopConversationScreen(),
          tablet: DesktopConversationScreen(),
        ));
  }
}
