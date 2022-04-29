

import 'package:get/get.dart';

enum CamelrodentsRadio { yes , no }

class CamelrodentsRadioController extends GetxController {
  CamelrodentsRadio charcter = CamelrodentsRadio.yes;

  void onChange(CamelrodentsRadio value) {
    charcter = value;
    update();
  }
}
 