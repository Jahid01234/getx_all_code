
import 'package:get/get.dart';
import 'package:get_material_app/app/modules/home/binding/home_binding.dart';
import 'package:get_material_app/app/modules/home/view/home_view.dart';
import 'package:get_material_app/app/routes/routes_name.dart';

class AppRoutes{
  static List<GetPage> pages =[
    GetPage(
        name: RoutesName.home,
        page: ()=> const HomeView(),
        binding: HomeBinding()
    ),
  ];
}