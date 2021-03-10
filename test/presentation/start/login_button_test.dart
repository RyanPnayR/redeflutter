import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redeflutter/localization.dart';
import 'package:redeflutter/presentation/login/loginscreen.dart';
import 'package:redeflutter/presentation/start/login_button.dart';
import 'package:redeflutter/redeapp.dart';
import 'package:redeflutter/routes.dart';

import '../../test_utils/mock_navigator_observer.dart';

void main() {
  group('Start Screen Navigation Tests', () {
    NavigatorObserver mockObserver;
    setUp(() {
      mockObserver = MockNavigatorObserver();
    });

    Widget getApp() {
      return MaterialApp(
        home: RedeApp(),
        navigatorObservers: [mockObserver],
      );
    }

    testWidgets(
        'Given when user clicks on login button then it navigates them to login screen',
        (WidgetTester tester) async {
      await tester.pumpWidget(getApp());
      final testButton = find.byKey(Key("LoginButton"));
      expect(testButton, findsOneWidget);

      await tester.tap(testButton);
      await tester.pumpAndSettle();

      verify(mockObserver.didPush(any, any));
      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets(
        'Given when user clicks on signup button then it navigates them to signup screen',
        (WidgetTester tester) async {
      await tester.pumpWidget(getApp());

      final testButton = find.byKey(Key("SignupButton"));
      expect(testButton, findsOneWidget);

      await tester.tap(testButton);
      await tester.pumpAndSettle();

      verify(mockObserver.didPush(any, any));
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });
}
