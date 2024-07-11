import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/app/modules/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("GetX Image Picker"),

        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => CircleAvatar(
                radius: 30,
                backgroundImage: controller.selectedImage.isNotEmpty
                    ? FileImage(File(controller.selectedImage.toString()))
                    : null

            ),
            ),
            const SizedBox(height: 20),
            TextButton(onPressed: (){
              controller.getImage();
            }, child: const Text("Click"))
          ],
        ),
      ),

    );
  }
}
