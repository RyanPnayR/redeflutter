import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/redeapp.dart';

Widget getApp(List<NavigatorObserver> navigationObservers) {
  return MaterialApp(
    home: RedeApp(),
    navigatorObservers: navigationObservers,
  );
}
