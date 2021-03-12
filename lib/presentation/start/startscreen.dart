import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/presentation/settings/privacy_settings_button.dart';
import 'package:redeflutter/presentation/start/login_button.dart';
import 'package:redeflutter/presentation/start/signup_button.dart';
import 'package:redeflutter/routes.dart';
import 'package:redeflutter/theme.dart';
import 'package:redeflutter/util/responsive.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // if (Responsive.isDesktop(context)) {
    //   Navigator.of(context).pushNamed(Routes.login);
    // }
    return Scaffold(
      bottomSheet: Container(
        color: AppTheme.lightGray,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginButton(),
            SingupButton(),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(100),
                child: Image(
                    image: AssetImage("assets/graphics/redeapp_icon.png")))
          ],
        ),
      ),
    );
  }
}
