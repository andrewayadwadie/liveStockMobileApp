

import 'package:get/get.dart';
 
enum CamelMoveOutside { yes, no }

class CamelMoveOutsideController extends GetxController{
  CamelMoveOutside charcter = CamelMoveOutside.yes;

  void onChange(CamelMoveOutside value){
    charcter = value;
    update();
  }

}