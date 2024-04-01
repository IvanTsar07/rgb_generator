// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rgb_generator/main.dart';

void main() {
  testWidgets('Homepage smoke test for color changed',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    /// expect the initial text to be displayed
    expect(find.text('Hello there!'), findsOneWidget);

    /// expect the initial color to be null
    expect(find.textContaining('RGBA'), findsNothing);
    expect(
      (tester.firstWidget(find.byKey(const Key('main-container'))) as Container)
          .color,
      isNull,
    );

    ///. Tap the container to change the color
    await tester.tap(find.byType(GestureDetector));

    /// Rebuild the widget after the state has changed.
    await tester.pump();

    /// expect the color to be displayed
    expect(find.textContaining('RGBA'), findsOneWidget);

    /// expect the color to be not null
    expect(
      (tester.firstWidget(find.byKey(const Key('main-container'))) as Container)
          .color,
      isNotNull,
    );
  });
}
