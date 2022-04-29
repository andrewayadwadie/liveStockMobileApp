import 'package:get/get.dart';

enum CamelSmallBoxProgramRadio { yes, no }

class CamelSmallBoxProgramRadioController extends GetxController {
  CamelSmallBoxProgramRadio charcter = CamelSmallBoxProgramRadio.yes;

  void onChange(CamelSmallBoxProgramRadio value) {
    charcter = value;
    update();
  }
}
