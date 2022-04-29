import 'package:get/get.dart';

enum CamelSlaughterRadio { yes, no }

class CamelSlaughterRadioController extends GetxController {
  CamelSlaughterRadio charcter = CamelSlaughterRadio.yes;

  void onChange(CamelSlaughterRadio value) {
    charcter = value;
    update();
  }
}


