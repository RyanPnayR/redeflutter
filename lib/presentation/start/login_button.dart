import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/localization.dart';
import 'package:redeflutter/routes.dart';
import 'package:redeflutter/theme.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key("LoginButton"),
      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.login);
        },
        style: AppTheme.SigninButton,
        child: Container(
          height: 50.0,
          alignment: Alignment.center,
          child: Text(
            RedeappLocalizations.of(context).usedRedeapp,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
