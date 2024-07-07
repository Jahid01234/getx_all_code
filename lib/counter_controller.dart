import 'package:get/get.dart';


class CounterController extends GetxController{
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;
  RxInt count3 = 0.obs;

  void increment1(){
    count1++;
  }

  void increment2(){
    count2++;
  }

  void increment3(){
    count3++;
  }


}