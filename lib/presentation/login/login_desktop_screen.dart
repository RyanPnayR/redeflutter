import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/util/login_footer.dart';

import '../../theme.dart';
import './loginform.dart';

class DesktopLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 450,
              padding: EdgeInsets.symmetric(vertical: 25),
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                color: AppTheme.loginBackgroundBoxGray,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      "assets/graphics/logo-redeapp.png",
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: LoginForm(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Text("Need an account? "),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, // Text colour here
                          width: 1.0, // Underline width
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up here",
                        style: AppTheme.signupButtonLinkText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
