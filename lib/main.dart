import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'GetX Tutorial',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}


