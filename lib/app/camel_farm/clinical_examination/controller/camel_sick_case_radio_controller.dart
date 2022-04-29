import 'package:get/get.dart';

enum CamelSickCaseRadio { yes, no }

class CamelSickCaseRadioController extends GetxController {
  CamelSickCaseRadio charcter =
      CamelSickCaseRadio.yes;

  void onChange(CamelSickCaseRadio value) {
    charcter = value;
    update();
  }
}
