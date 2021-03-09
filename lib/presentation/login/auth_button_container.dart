import "package:redeflutter/localization.dart";
import "package:redeflutter/presentation/login/auth_button.dart";
import "package:flutter/cupertino.dart";

class AuthButtonContainer extends StatelessWidget {
  const AuthButtonContainer();

  @override
  Widget build(BuildContext context) {
    return AuthButton(
        buttonText: false
            ? RedeappLocalizations.of(context).logOut
            : RedeappLocalizations.of(context).logIn,
        onPressedCallback: () {});
  }
}
