import 'package:get/get.dart';

enum CamelRiftProgramRadio { yes, no }

class CamelRiftProgramRadioController extends GetxController {
  CamelRiftProgramRadio charcter = CamelRiftProgramRadio.yes;

  void onChange(CamelRiftProgramRadio value) {
    charcter = value;
    update();
  }
}
