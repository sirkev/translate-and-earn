import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:translate_and_earn/pages/get_started.dart';
import 'package:translate_and_earn/pages/login.dart';

void main() {
  testWidgets("tap get started button", (WidgetTester tester) async {
    final redButton = find.byKey(const ValueKey('redButton'));
    await tester.pumpWidget(const MaterialApp(
      home: GetStarted(),
    ));
    await tester.tap(redButton, warnIfMissed: false);
    await tester.pump();
    expect(find.byKey(const ValueKey('redButton')), findsOneWidget);
  });

  testWidgets('Tap login text ', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: GetStarted(),
    ));
    final loginText = find.byKey(const ValueKey('red-login'));
    await tester.tap(loginText, warnIfMissed: false);
    await tester.pump();
    expect(find.byKey(const ValueKey('red-login')), findsOneWidget);
  });

  testWidgets('user login text fields', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Login(),
    ));
    final userNameText = find.byKey(const ValueKey("username"));
    final loginText = find.byKey(const ValueKey('login-text'));
    await tester.enterText(userNameText, "kevinoduor8877@gmail.com");

    tester.widget(loginText);
    expect(userNameText, findsOneWidget);
    expect(loginText, findsOneWidget);
  });

  testWidgets("password field", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Login(),
    ));
    final passwordField = find.byKey(const ValueKey('password'));
    await tester.enterText(passwordField, 'qwerty');
    expect(passwordField, findsOneWidget);
    expect(passwordField, findsOneWidget);
  });

  testWidgets("login button", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Login(),
    ));
    final loginButton = find.byKey(const ValueKey('login-button'));
    await tester.tap(loginButton, warnIfMissed: false);
    expect(loginButton, findsOneWidget);
  });
}
