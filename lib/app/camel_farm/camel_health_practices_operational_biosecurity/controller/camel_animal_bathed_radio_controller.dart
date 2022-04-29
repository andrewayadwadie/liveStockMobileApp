import 'package:get/get.dart';

enum CamelAnimalBathedRadio { yes, no }

class CamelAnimalBathedRadioController extends GetxController {
  CamelAnimalBathedRadio charcter = CamelAnimalBathedRadio.yes;

  void onChange(CamelAnimalBathedRadio value) {
    charcter = value;
    update();
  }
}

