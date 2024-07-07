import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/Routes/routes_name.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: const Text("Go to screen one"),
          onPressed: (){
          // Get.to(const FirstScreen());

            // Navigate to next screen without pop any screens
            Get.toNamed(
                RoutesName.firstScreen,
                // list
                arguments: [
                  "Jahid",
                  "Hasan"
                ]
            );
          },
        ),
      ),
    );
  }
}
