import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/theme.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: AppTheme.darkGray,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Red e App for iOS",
                style: AppTheme.forgotPasswordButtonText,
              )),
          VerticalDivider(
            indent: 10,
            endIndent: 10,
            color: AppTheme.mediumGray,
            thickness: .5,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Red e App for Android",
                style: AppTheme.forgotPasswordButtonText,
              )),
        ],
      ),
    );
  }
}
