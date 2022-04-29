import 'package:get/get.dart';

enum CamelsickAnimalIsolateRadio { yes, no }

class CamelsickAnimalIsolateRadioController extends GetxController {
  CamelsickAnimalIsolateRadio charcter = CamelsickAnimalIsolateRadio.yes;

  void onChange(CamelsickAnimalIsolateRadio value) {
    charcter = value;
    update();
  }
}
