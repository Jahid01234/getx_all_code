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
        title: const Text("GetX MediaQuery Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 1st container
          Container(
            // Its normal use for MediaQuery
            // height: MediaQuery.of(context).size.height * 0.2,
            // width: MediaQuery.of(context).size.width * 1,

            // Here GetX mediaQuery
            height: Get.height * 0.3,
            width:  Get.width * 1,
            decoration: const BoxDecoration(color: Colors.cyan),
            child: const Center(
              child: Text("Container-1"),
            ),
          ),
           const SizedBox(height: 10),
          // 2nd container
          Container(
            // // here static value define
            // height: 50,
            // width: double.maxFinite,

            // Here GetX mediaQuery
            height: Get.height * 0.2,
            width:  Get.width * 1,
            decoration: const BoxDecoration(color: Colors.purpleAccent),
            child: const Center(
              child: Text("Container-2"),
            ),
          ),
        ],
      ),
    );
  }
}
