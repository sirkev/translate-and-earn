import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:translate_and_earn/pages/get_started.dart';

void main() {

  group("top red widgets", () {
    testWidgets("red containers are present", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: GetStarted()));
    });
  });

  group("Decoration stack", () {
    //TODO test container dimensions , color and position

  });

  group("texts on GetStarted Page", () {
    testWidgets("Translate & Earn Text", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: GetStarted()));
      expect(find.text("Translate & Earn"), findsOneWidget);
    });
    testWidgets("Now its easy to earn money", (WidgetTester tester) async{
      await tester.pumpWidget(const MaterialApp(home: GetStarted()));
      expect(find.text("Now its easy to earn money "), findsOneWidget);
    });
    testWidgets("just use translate", (WidgetTester tester) async{
      await tester.pumpWidget(const MaterialApp(home: GetStarted()));
      expect(find.text("just use translate "), findsOneWidget);
    });


  });

  group("Get Started button", () {

  });

  group("not a member text", () {

  });
}
