import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/Routes/routes_name.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key,});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final args = Get.arguments;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:  Text('First Screen ${args[1]}'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: const Text("Go to screen two"),
          onPressed: (){
            //Get.back();

            // Navigate and remove the previous screen (home screen) from the tree
           Get.offAllNamed(
             RoutesName.secondScreen,
             // Map
             arguments: {
               'Name':'Jahid Hasan',
               'Dept':'Software Engineering',
               'Title':'Flutter Developer',
             }
           );
          },
        ),
      ),
    );
  }
}
