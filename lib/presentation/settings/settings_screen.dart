import "package:redeflutter/localization.dart";
import "package:redeflutter/presentation/common/common_app_bar.dart";
import "package:redeflutter/presentation/settings/privacy_settings_button.dart";
import "package:flutter/material.dart";

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: RedeappLocalizations.of(context).settingsTitle,
      ),
      body: ListView(
        children: <Widget>[
          PrivacySettingsButton(),
        ],
      ),
    );
  }
}
