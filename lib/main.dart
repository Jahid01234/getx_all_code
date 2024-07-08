import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/app/routes/app_routes.dart';
import 'package:get_material_app/app/routes/routes_name.dart';




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
      initialRoute: RoutesName.home,
      getPages: AppRoutes.pages,
    );
  }
}
