import "package:redeflutter/localization.dart";
import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class PrivacySettingsButton extends StatelessWidget {
  const PrivacySettingsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(RedeappLocalizations.of(context).privacyButton),
      onPressed: () {
        launch(RedeappLocalizations.of(context).privacyLink);
      },
    );
  }
}
