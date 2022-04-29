import 'package:get/get.dart';

enum CamelSanitizersMilkerToolsRadio { yes, no }

class CamelSanitizersMilkerToolsRadioController extends GetxController {
  CamelSanitizersMilkerToolsRadio charcter = CamelSanitizersMilkerToolsRadio.yes;

  void onChange(CamelSanitizersMilkerToolsRadio value) {
    charcter = value;
    update();
  }
}

