import 'package:get/get.dart';
import 'package:get_material_app/app/modules/home/controller/home_controller.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    // Here dependencies injection
    // Get.put(HomeController());
       Get.lazyPut(() => HomeController());
  }
}