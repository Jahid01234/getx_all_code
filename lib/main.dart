import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/home_screen.dart';
import 'package:get_material_app/languages.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'GetX Tutorial',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      //locale: Get.deviceLocale, // set initial device locale
      locale: const Locale("bn", "BD"), // set initial locale
      fallbackLocale: const Locale("en", "US"),
      home: const HomeScreen(),
    );
  }
}
