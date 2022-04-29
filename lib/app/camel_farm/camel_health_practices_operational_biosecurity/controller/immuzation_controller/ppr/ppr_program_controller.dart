import 'package:get/get.dart';

enum CamelPPRProgramRadio { yes, no }

class CamelPPRProgramRadioController extends GetxController {
  CamelPPRProgramRadio charcter = CamelPPRProgramRadio.yes;

  void onChange(CamelPPRProgramRadio value) {
    charcter = value;
    update();
  }
}
