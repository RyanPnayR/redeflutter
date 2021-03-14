import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/presentation/conversations/conversationscreen.dart';
import 'package:redeflutter/presentation/login/loginscreen.dart';
import 'package:redeflutter/presentation/start/startscreen.dart';
import 'package:redeflutter/routes.dart';
import 'package:redeflutter/theme.dart';
import 'package:redeflutter/util/responsive.dart';

import 'localization.dart';

class RedeApp extends StatefulWidget {
  const RedeApp({
    Key key,
  }) : super(key: key);

  @override
  _RedeAppState createState() => _RedeAppState();
}

class _RedeAppState extends State<RedeApp> {
  static final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: localizationsDelegates,
      supportedLocales: [
        const Locale("de", "DE"),
        const Locale("en", "EN"),
        const Locale("pt_BR", "PT"),
      ],
      title: "Circles App",
      navigatorKey: _navigatorKey,
      theme: AppTheme.theme,
      routes: {
        Routes.home: (context) {
          return StartScreen();
        },
        Routes.singup: (context) {
          return LoginScreen();
        },
        Routes.login: (context) {
          return LoginScreen();
        },
        Routes.messages: (context) {
          return ConversationScreen();
        }
      },
    );
  }
}
