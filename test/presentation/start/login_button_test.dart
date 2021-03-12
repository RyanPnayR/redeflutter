import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:redeflutter/presentation/login/loginscreen.dart';

import '../../test_utils/functions.dart';
import '../../test_utils/mock_navigator_observer.dart';

void main() {
  group('Start Screen Navigation Tests', () {
    NavigatorObserver mockObserver;

    setUp(() {
      mockObserver = MockNavigatorObserver();
    });

    testWidgets(
        'Given when user clicks on login button then it navigates them to login screen',
        (WidgetTester tester) async {
      await tester.pumpWidget(getApp([mockObserver]));
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
      await tester.pumpWidget(getApp([mockObserver]));

      final testButton = find.byKey(Key("SignupButton"));
      expect(testButton, findsOneWidget);

      await tester.tap(testButton);
      await tester.pumpAndSettle();

      verify(mockObserver.didPush(any, any));
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });
}
