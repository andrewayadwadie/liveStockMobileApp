import 'package:get/get.dart';

enum CamelInsectFarmPestControlRadio { yes, no }

class CamelInsectFarmPestControlRadioController extends GetxController {
  CamelInsectFarmPestControlRadio charcter =
      CamelInsectFarmPestControlRadio.yes;

  void onChange(CamelInsectFarmPestControlRadio value) {
    charcter = value;
    update();
  }
}
