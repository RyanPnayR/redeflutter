import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModel {
  Account account;
  Settings settings;
  List<NetworkAccount> networks;
  NetworkAccount selectedNetwork;
  String aToken = '';
  bool loading = false;

  logout(BuildContext context) {
    locator.get<AppModel>().aToken = "";
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) {
      value.remove('token');
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Routes.home, (route) => false);
    });
  }
}
