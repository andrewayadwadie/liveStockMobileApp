import 'package:get/get.dart';

enum CamelTryProgramRadio { yes, no }

class CamelTryProgramRadioController extends GetxController {
  CamelTryProgramRadio charcter = CamelTryProgramRadio.yes;

  void onChange(CamelTryProgramRadio value) {
    charcter = value;
    update();
  }
}
