import 'package:get/get.dart';

enum CamelFloorCleanedRadio { yes, no }

class CamelFloorCleanedRadioController extends GetxController {
  CamelFloorCleanedRadio charcter = CamelFloorCleanedRadio.yes;

  void onChange(CamelFloorCleanedRadio value) {
    charcter = value;
    update();
  }
}
