import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyan,
       title: const Text("Get Material App & GetUtils Example",
         style: TextStyle(fontSize: 14),
       ),
     ),
     body:  const Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         //crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text('Flutter GetX',
             style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.deepOrange,
             ),
           ),
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.cyan,
       foregroundColor: Colors.white,
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
       ),
       tooltip: "Click Here",
       // When we use "FloatingActionButton.extended" then we use <Label and Icon>
       // label:const Text("Add"),
       // icon: const Icon(Icons.add),
       child:const Row(
         children: [
           Icon(Icons.add,size: 20,color: Colors.tealAccent,),
           Text("Add"),
         ],
       ),
       onPressed: (){
         Get.snackbar(
           " Flutter Dev",
             "I am a Flutter Developer",
           backgroundColor: Colors.blueGrey,
           colorText: Colors.white,
           animationDuration: const Duration(seconds: 4),
          // icon: const Icon(Icons.add),
             // titleText: const Text(" Flutter ",),
           margin:const EdgeInsets.all(20),
           snackPosition: SnackPosition.BOTTOM,
           dismissDirection: DismissDirection.horizontal,
           isDismissible: true,
           onTap: (snack) {},


         );
       },
     ),
   );
  }
}