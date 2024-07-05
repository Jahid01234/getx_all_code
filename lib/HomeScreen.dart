import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "GetX light/dark theme,bottom sheet, dialog Alert",
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // GetX Dialog show
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert "),
              subtitle: const Text("GetX Dialog alert with getX."),
              onTap: () {
                // Dialog show
                Get.defaultDialog(
                  backgroundColor: Colors.blueGrey,
                  title: "GetX Dialog Alert ",
                  titlePadding: const EdgeInsets.only(top: 5),
                  titleStyle:
                      const TextStyle(fontSize: 15, color: Colors.white),
                  content: const Column(
                    children: [
                      Text(
                        "GetX Dialog Alert. Flutter getX ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.deepOrange),
                      ),
                      Text(
                        "GetX Dialog Alert. Flutter getX ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.deepOrange),
                      ),
                      Text(
                        "GetX Dialog Alert. Flutter getX ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                  // middleText: "GetX Dialog Alert. Flutter getX ",
                  // middleTextStyle: const TextStyle(fontSize: 15,color: Colors.tealAccent),
                  // actions: [
                  //   IconButton(onPressed: (){
                  //     Get.back();
                  //   }, icon:const Icon(Icons.cancel),),
                  //   IconButton(onPressed: (){
                  //      //Navigator.pop;
                  //      Get.back();
                  //   }, icon:const Icon(Icons.confirmation_num),)
                  // ],
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('No'),
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      //Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text('Yes'),
                  ),
                  // textCancel: "No",
                  // textConfirm: "Yes"
                );
              },
            ),
          ),

          // GetX Light/Dark theme and bottom sheet show
          Card(
            child: ListTile(
              title: const Text("GetX Bottom sheet "),
              subtitle: const Text("GetX Light/Dark theme."),
              onTap: () {
                // Dialog show
                Get.bottomSheet(
                 Container(
                   decoration: const  BoxDecoration(
                     color: Colors.grey,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(30),
                       topRight: Radius.circular(30),
                     )
                   ),
                   child: Column(
                     children: [
                       ListTile(
                         leading: const Icon(Icons.light_mode,color: Colors.white,),
                         title: const Text('Light Theme'),
                         onTap: (){
                           Get.changeTheme(ThemeData.light());
                         },
                       ),

                       ListTile(
                         leading: const Icon(Icons.dark_mode,color: Colors.white,),
                         title: const Text('Dark Theme'),
                         onTap: (){
                           Get.changeTheme(ThemeData.dark());
                         },
                       ),

                     ],
                   ),
                 )

                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
