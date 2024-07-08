import 'package:get/get.dart';

class HomeController extends GetxController{

  RxList<String> fruitName =[
    'Apple',
    'Mango',
    'Banana',
    'Orange'
   ].obs;

  RxList tempFruit =[ ].obs;

  void addToFavourite(String value){
    tempFruit.add(value);
  }

   void removeToFavourite(String value){
    tempFruit.remove(value);
  }



}