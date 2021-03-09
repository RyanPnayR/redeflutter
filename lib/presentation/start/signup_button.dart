import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/localization.dart';
import 'package:redeflutter/routes.dart';
import 'package:redeflutter/theme.dart';

class SingupButton extends StatelessWidget {
  const SingupButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.singup);
        },
        style: AppTheme.signupButton,
        child: Container(
          height: 50.0,
          alignment: Alignment.center,
          child: Text(
            RedeappLocalizations.of(context).newRedeapp,
            textAlign: TextAlign.center,
            style: AppTheme.signupButtonText,
          ),
        ),
      ),
    );
  }
}
