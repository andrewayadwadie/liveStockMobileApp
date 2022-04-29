import 'package:get/get.dart';

enum CamelInsectExistRadio { yes, no }

class CamelInsectExistRadioController extends GetxController {
  CamelInsectExistRadio charcter = CamelInsectExistRadio.yes;

  void onChange(CamelInsectExistRadio value) {
    charcter = value;
    update();
  }
}
