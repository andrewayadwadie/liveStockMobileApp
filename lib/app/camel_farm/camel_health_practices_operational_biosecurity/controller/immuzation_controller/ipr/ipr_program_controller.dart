import 'package:get/get.dart';

enum CamelIPRProgramRadio { yes, no }

class CamelIPRProgramRadioController extends GetxController {
  CamelIPRProgramRadio charcter = CamelIPRProgramRadio.yes;

  void onChange(CamelIPRProgramRadio value) {
    charcter = value;
    update();
  }
}
