
import 'package:get/get.dart';
 
enum CamelWild { yes, no }

class CamelWildController extends GetxController{
  CamelWild charcter = CamelWild.yes;

  void onChange(CamelWild value){
    charcter = value;
    update();
  }

}