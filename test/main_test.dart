import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:translate_and_earn/main.dart';
import 'package:translate_and_earn/pages/get_started.dart';
import 'package:get/get.dart';

void main() {
  group("check GetMaterialApp and GetStarted() home route", () {

    testWidgets("Test for GetMaterialApp", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final materialMainApp = find.byKey(const ValueKey("get-material-app"));

      await tester.pumpWidget(GetMaterialApp(
        key: const ValueKey("get-material-app"),
        home: const GetStarted(
          key: ValueKey("get-started"),
        ),
        debugShowCheckedModeBanner: false,
        title: "Translate & Earn",
        theme: ThemeData(primarySwatch: Colors.red),
      ));

      expect(materialMainApp, findsOneWidget);
    });

    testWidgets("GetStarted Widget", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final getStartedPage = find.byKey(const ValueKey("get-started"));

      expect(getStartedPage, findsOneWidget);


    });
  });

}
