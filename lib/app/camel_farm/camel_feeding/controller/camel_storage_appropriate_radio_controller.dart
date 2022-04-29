

import 'package:get/get.dart';

enum CamelStorageAppropriateRadio { yes , no }

class CamelStorageAppropriateRadioController extends GetxController {
  CamelStorageAppropriateRadio charcter = CamelStorageAppropriateRadio.yes;

  void onChange(CamelStorageAppropriateRadio value) {
    charcter = value;
    update();
  }
}
 