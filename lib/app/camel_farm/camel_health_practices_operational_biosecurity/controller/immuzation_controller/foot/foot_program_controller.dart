import 'package:get/get.dart';

enum CamelFootProgramRadio { yes, no }

class CamelFootProgramRadioController extends GetxController {
  CamelFootProgramRadio charcter = CamelFootProgramRadio.yes;

  void onChange(CamelFootProgramRadio value) {
    charcter = value;
    update();
  }
}
