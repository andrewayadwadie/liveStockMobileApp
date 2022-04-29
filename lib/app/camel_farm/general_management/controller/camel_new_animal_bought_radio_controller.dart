

import 'package:get/get.dart';
 
enum CamelNewAnimalBought { yes, no }

class CamelNewAnimalBoughtController extends GetxController{
  CamelNewAnimalBought charcter = CamelNewAnimalBought.yes;

  void onChange(CamelNewAnimalBought value){
    charcter = value;
    update();
  }

}