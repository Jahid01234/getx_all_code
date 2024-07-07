import 'package:get/get.dart';
import 'package:get_material_app/languages/bangla.dart';
import 'package:get_material_app/languages/english.dart';

class Languages extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    // "en_Us" : {
    //                "app_name" : "Flutter App",
    //                "app_title" : "This is app localization example. "
    //            },

    "en_US" : english,
    "bn_BD" : bangla
  };

}