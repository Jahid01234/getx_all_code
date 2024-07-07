import 'package:get/get.dart';
import 'package:get_material_app/Routes/routes_name.dart';
import 'package:get_material_app/first_screen.dart';
import 'package:get_material_app/home_screen.dart';
import 'package:get_material_app/second_screen.dart';

class AppRoutes{
  static final List<GetPage> pages=[
    GetPage(
        name: RoutesName.homeScreen,
        page: ()=> const  HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 200),
    ),

    GetPage(
        name: RoutesName.firstScreen,
        page: ()=> const  FirstScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 200),
    ),

    GetPage(
        name: RoutesName.secondScreen,
        page: ()=> const SecondScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}