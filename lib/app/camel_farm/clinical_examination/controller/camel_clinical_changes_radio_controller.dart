import 'package:get/get.dart';

enum CamelClinicalChangesRadio { yes, no }

class CamelClinicalChangesRadioController extends GetxController {
  CamelClinicalChangesRadio charcter = CamelClinicalChangesRadio.yes;

  void onChange(CamelClinicalChangesRadio value) {
    charcter = value;
    update();
  }
}
