import 'package:get/get.dart';

enum CamelVisitorClothsRadio { yes, no }

class CamelVisitorClothsRadioController extends GetxController {
  CamelVisitorClothsRadio charcter = CamelVisitorClothsRadio.yes;

  void onChange(CamelVisitorClothsRadio value) {
    charcter = value;
    update();
  }
}
