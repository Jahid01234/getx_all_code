import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/app/modules/home/controller/home_controller.dart';

// GetView is a type of StatelessWidget. its special because it has provide a controller
class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: const Text(
          " Favourite App",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruitName.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (controller.tempFruit.contains(controller.fruitName[index].toString())) {
                  controller.removeToFavourite(controller.fruitName[index].toString());
                } else {
                  controller.addToFavourite(controller.fruitName[index].toString(),
                  );
                }
              },
              title: Text(controller.fruitName[index].toString()),
              trailing: Obx(
                  ()=> Icon(Icons.favorite,
                    color: controller.tempFruit.contains(controller.fruitName[index].toString())
                        ? Colors.red
                        : Colors.white24,
                  ),
              )
            ),
          );
        },
      ),
    );
  }
}
