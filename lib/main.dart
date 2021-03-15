import 'package:redeflutter/locator.dart';
import 'package:redeflutter/redeapp.dart';
import 'package:redeflutter/routes.dart';
import "package:redeflutter/util/logger.dart";
import "package:flutter/material.dart";
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await DotEnv.load(fileName: "assets/env/.env");
  SharedPreferences prefs = await SharedPreferences.getInstance();

  setupLocator();
  runApp(RedeApp(
    initialRoute: prefs.get('token') != "" ? Routes.messages : Routes.home,
  ));
}
