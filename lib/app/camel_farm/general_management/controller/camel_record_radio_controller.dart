

import 'package:get/get.dart';
 
enum CamelRecord { yes, no }

class CamelRecordController extends GetxController{
  CamelRecord charcter = CamelRecord.yes;

  void onChange(CamelRecord value){
    charcter = value;
    update();
  }

}