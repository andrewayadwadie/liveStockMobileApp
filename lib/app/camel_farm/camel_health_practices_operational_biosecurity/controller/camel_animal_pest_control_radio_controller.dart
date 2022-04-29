import 'package:get/get.dart';

enum CamelInsectAnimalPestControlRadio { yes, no }

class CamelInsectAnimalPestControlRadioController extends GetxController {
  CamelInsectAnimalPestControlRadio charcter =
      CamelInsectAnimalPestControlRadio.yes;

  void onChange(CamelInsectAnimalPestControlRadio value) {
    charcter = value;
    update();
  }
}
