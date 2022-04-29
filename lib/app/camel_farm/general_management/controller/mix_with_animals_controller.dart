
import 'package:get/get.dart';
 
enum CamelWithAnimals { yes, no }

class CamelWithAnimalsController extends GetxController{
  CamelWithAnimals charcter = CamelWithAnimals.yes;

  void onChange(CamelWithAnimals value){
    charcter = value;
    update();
  }

}