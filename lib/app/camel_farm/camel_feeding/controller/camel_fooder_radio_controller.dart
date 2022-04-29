

import 'package:get/get.dart';

enum CamelFooderRadio { yes , no }

class CamelFooderRadioController extends GetxController {
  CamelFooderRadio charcter = CamelFooderRadio.yes;

  void onChange(CamelFooderRadio value) {
    charcter = value;
    update();
  }
}
