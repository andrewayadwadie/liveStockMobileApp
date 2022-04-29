

import 'package:get/get.dart';
 
enum CamelDefenation { yes, no }

class CamelDefenationController extends GetxController{
  CamelDefenation charcter = CamelDefenation.yes;

  void onChange(CamelDefenation value){
    charcter = value;
    update();
  }

}