import 'package:get/get.dart';

enum CamelAntibioticsUsedRadio { yes, no }

class CamelAntibioticsUsedRadioController extends GetxController {
  CamelAntibioticsUsedRadio charcter =
      CamelAntibioticsUsedRadio.yes;

  void onChange(CamelAntibioticsUsedRadio value) {
    charcter = value;
    update();
  }
}
