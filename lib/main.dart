import 'package:redeflutter/locator.dart';
import 'package:redeflutter/redeapp.dart';
import "package:redeflutter/util/logger.dart";
import "package:flutter/material.dart";
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

void main() async {
  await DotEnv.load(fileName: "assets/env/.env");
  setupLocator();
  configureLogger();
  runApp(RedeApp());
}
