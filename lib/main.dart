import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/Routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Tutorial',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
    );
  }
}
