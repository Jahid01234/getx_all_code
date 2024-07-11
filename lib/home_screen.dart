import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("GetX Storage Example"),

        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // write the data button
            ElevatedButton(
              onPressed: () async {
                // write the data
                await GetStorage().write("data", "I am Flutter Dev");//key and value
              },
              child: const Text("Write Data"),
            ),
            const SizedBox(height: 10),

            // Read the data button
            ElevatedButton(
              onPressed: () async {
                // read the data
                await GetStorage.init();
                final name = GetStorage().read("data");//pass the key here
               // show read data in the snack-bar
               Get.snackbar("Title", name ?? "");
              },
              child: const Text("Read Data"),
            ),
            const SizedBox(height: 10),

            // delete the data button
            ElevatedButton(
              onPressed: () async {
                //  Delete the data
                //await GetStorage().remove("data");
               await GetStorage().erase();
              },
              child: const Text("Delete Data"),
            ),
          ],
        ),
      ),

    );
  }
}
