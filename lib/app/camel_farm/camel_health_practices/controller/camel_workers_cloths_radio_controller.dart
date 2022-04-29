import 'package:get/get.dart';

enum CamelWorkersClothsRadio { yes, no }

class CamelWorkersClothsRadioController extends GetxController {
  CamelWorkersClothsRadio charcter = CamelWorkersClothsRadio.yes;

  void onChange(CamelWorkersClothsRadio value) {
    charcter = value;
    update();
  }
}
