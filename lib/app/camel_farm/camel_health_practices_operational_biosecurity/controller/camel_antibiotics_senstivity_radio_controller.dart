import 'package:get/get.dart';

enum CamelAntibioticsSenstivityRadio { yes, no }

class CamelAntibioticsSenstivityRadioController extends GetxController {
  CamelAntibioticsSenstivityRadio charcter = CamelAntibioticsSenstivityRadio.yes;

  void onChange(CamelAntibioticsSenstivityRadio value) {
    charcter = value;
    update();
  }
}

