import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_material_app/Routes/routes_name.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 2,
              child: Column(
                children: [
                Text(
                  data['Name'],
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                ),
                Text(
                  data['Dept'],
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                ),
                Text(
                  data['Title'],
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                ),
               ],
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              child: const Text("Go to Home Screen"),
              onPressed: () {
                Get.offAllNamed(RoutesName.homeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
