import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/app/modules/home/controller/home_controller.dart';

// GetView is a type of StatelessWidget. its special because it has provide a controller v
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: const Text(
          " Binding and Get Cli project structure ",
          style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              controller.count1.toString(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
              ),
            ),
            ),
            const SizedBox(height: 3),
            Obx(() => Text(
              controller.count2.toString(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
              ),
            ),
            ),
            const SizedBox(height: 3),
            Obx(() {
              return Text(
                controller.count3.toString(),
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                ),
              );
            },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.increment1();
                  },
                  child: const Text("Button-1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.increment2();
                  },
                  child: const Text("Button-2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.increment3();
                  },
                  child: const Text("Button-3"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
