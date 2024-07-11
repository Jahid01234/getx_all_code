import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController{

   RxString  selectedImage = ''.obs;
   
   Future<void> getImage() async{
     final ImagePicker picker = ImagePicker();
     final result = await picker.pickImage(
       source: ImageSource.gallery,
     );
     if(result != null){
       selectedImage.value = result.path;
     }
 }
}