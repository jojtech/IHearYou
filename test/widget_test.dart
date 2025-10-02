// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ihearyou/main.dart';

void main() {
  testWidgets('IHearYou app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const IHearYouApp());

    // Verify that the app title is displayed
    expect(find.text('IHearYou'), findsOneWidget);

    // Verify that the initial instruction text is displayed
    expect(find.text('Tap to speak'), findsOneWidget);
    expect(find.text('Say "Blue" or "Red"'), findsOneWidget);

    // Verify that the microphone icon is present
    expect(find.byIcon(Icons.mic_none), findsOneWidget);

    // Verify that the info icon is present
    expect(find.byIcon(Icons.info_outline), findsOneWidget);
  });

  testWidgets('Microphone button is tappable', (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(const IHearYouApp());

    // Find the microphone button container
    final micButton = find.byType(GestureDetector).first;

    // Verify the button exists
    expect(micButton, findsOneWidget);

    // Note: We can't fully test speech recognition in unit tests
    // as it requires actual device hardware and permissions
  });
}