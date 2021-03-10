import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_utils/functions.dart';
import '../../test_utils/mock_navigator_observer.dart';

void main() {
  group('Login form tests', () {
    NavigatorObserver mockObserver;

    setUp(() {
      mockObserver = MockNavigatorObserver();
    });
    testWidgets(
        'Given when users submits without entering email or password then app displays that the fields are required',
        (tester) async {
      await tester.pumpWidget(getApp([mockObserver]));
    });
  });
}
