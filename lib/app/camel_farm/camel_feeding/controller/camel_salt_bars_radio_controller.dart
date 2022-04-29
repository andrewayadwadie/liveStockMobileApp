

import 'package:get/get.dart';

enum CamelSaltBarsRadio { yes , no }

class CamelSaltBarsRadioController extends GetxController {
  CamelSaltBarsRadio charcter = CamelSaltBarsRadio.yes;

  void onChange(CamelSaltBarsRadio value) {
    charcter = value;
    update();
  }
}
 