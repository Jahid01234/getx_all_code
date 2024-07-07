import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/counter_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  // Dependency injection
  final CounterController dependency = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: const Text(
          "Get Builder using Counter App",
          style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
                id: "ID1",
                builder: (controller){
                  print("id:1");
                  return Text(
                    controller.count1.toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                    ),
                  );
                }
            ),
            const SizedBox(height: 3),

            GetBuilder<CounterController>(
                id: "ID2",
                builder: (controller){
                  print("id:2");
                  return Text(
                    controller.count2.toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                    ),
                  );
                }
            ),

            const SizedBox(height: 3),
            GetBuilder<CounterController>(
                id: "ID3",
                builder: (controller){
                  print("id:3");
                  return Text(
                    controller.count3.toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                    ),
                  );
                }
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    dependency.increment1();
                  },
                  child: const Text("Button-1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    dependency.increment2();
                  },
                  child: const Text("Button-2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    dependency.increment3();
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
