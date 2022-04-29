import 'package:get/get.dart';

enum CamelGoodSanitationRadio { yes, no }

class CamelGoodSanitationRadioController extends GetxController {
  CamelGoodSanitationRadio charcter = CamelGoodSanitationRadio.yes;

  void onChange(CamelGoodSanitationRadio value) {
    charcter = value;
    update();
  }
}
