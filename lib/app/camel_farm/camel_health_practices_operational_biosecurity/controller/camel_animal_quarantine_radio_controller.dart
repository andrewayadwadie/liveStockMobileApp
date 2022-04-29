import 'package:get/get.dart';

enum CamelAnimalIsolateQuarantineRadio { yes, no }

class CamelAnimalIsolateQuarantineRadioController extends GetxController {
  CamelAnimalIsolateQuarantineRadio charcter = CamelAnimalIsolateQuarantineRadio.yes;

  void onChange(CamelAnimalIsolateQuarantineRadio value) {
    charcter = value;
    update();
  }
}
