import 'package:get/get.dart';

enum CamelReproductionRadio { yes, no }

class CamelReproductionRadioController extends GetxController {
  CamelReproductionRadio charcter = CamelReproductionRadio.yes;

  void onChange(CamelReproductionRadio value) {
    charcter = value;
    update();
  }
}
