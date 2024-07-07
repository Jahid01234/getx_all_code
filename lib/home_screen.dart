import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: const Text("GetX localization & Change App Language ",
        style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 // "tr" use for translation
                 Text("app_name".tr),
                 Text("app_title".tr),
                 const SizedBox(height: 30),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ElevatedButton(
                         onPressed: (){
                           // language_code, country_code
                           Get.updateLocale(
                               const Locale("bn", "BD"),
                           );
                         },
                         child: const Text("Bangla")
                     ),
                     const SizedBox(width: 10),
                     ElevatedButton(
                         onPressed: (){
                           Get.updateLocale(
                               const Locale("en", "US"),
                           );
                         },
                         child: const Text("English")
                     )
                   ],
                 )
               ],
        ),
      ),
    );
  }
}
