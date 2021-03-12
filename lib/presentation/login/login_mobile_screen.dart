import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../localization.dart';
import '../../theme.dart';
import 'loginform.dart';

class MobileLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40.0),
              child: LoginForm(),
            ),
            Column(
              children: [
                Text(RedeappLocalizations.of(context).iForgot),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        RedeappLocalizations.of(context).password,
                        style: AppTheme.signinButtonText,
                      ),
                    ),
                    Text(" | ", style: AppTheme.signinButtonText),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        RedeappLocalizations.of(context).username,
                        style: AppTheme.signinButtonText,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
