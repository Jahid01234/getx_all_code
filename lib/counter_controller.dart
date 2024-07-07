import 'package:get/get.dart';

class CounterController extends GetxController{
  var count1 = 0;
  var count2 = 0;
  var count3 = 0;

  void increment1(){
    count1++;
    update(['ID1']);
  }

  void increment2(){
    count2++;
    update(['ID2']);
  }

  void increment3(){
    count3++;
    update(['ID3']);
  }


}