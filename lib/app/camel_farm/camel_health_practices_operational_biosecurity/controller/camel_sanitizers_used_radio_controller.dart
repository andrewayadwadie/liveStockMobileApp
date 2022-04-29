import 'package:get/get.dart';

enum CamelSanitizersUsedRadio { yes, no }

class CamelSanitizersUsedRadioController extends GetxController {
  CamelSanitizersUsedRadio charcter = CamelSanitizersUsedRadio.yes;

  void onChange(CamelSanitizersUsedRadio value) {
    charcter = value;
    update();
  }
}

