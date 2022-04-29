import 'package:get/get.dart';

enum CamelAnimalsShowSymptomsRadio { yes, no }

class CamelAnimalsShowSymptomsRadioController extends GetxController {
  CamelAnimalsShowSymptomsRadio charcter = CamelAnimalsShowSymptomsRadio.yes;

  void onChange(CamelAnimalsShowSymptomsRadio value) {
    charcter = value;
    update();
  }
}
