
import 'package:get/get.dart';

enum CamelSlaughterPlacerRadio { yes, no }

class CamelSlaughterPlacerRadioController extends GetxController {
  CamelSlaughterPlacerRadio charcter = CamelSlaughterPlacerRadio.yes;

  void onChange(CamelSlaughterPlacerRadio value) {
    charcter = value;
    update();
  }
}
