import 'package:flutter/material.dart';
import 'package:translate_and_earn/pages/get_started.dart';
import 'package:get/get.dart';

class Dimensions {
  static double _screenHeight= Get.context!.height;
  static double _screenWidth= Get.context!.width;
  
}



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){

    return GetMaterialApp(
      key: const ValueKey('get-material-app'),
      debugShowCheckedModeBanner: false,
      title: 'Translate & Earn',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const GetStarted(key: ValueKey("get-started"),),
    );
  }
}
