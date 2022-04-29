import 'package:get/get.dart';

enum CamelFeederrCleanedRadio { yes, no }

class CamelFeederrCleanedRadioController extends GetxController {
  CamelFeederrCleanedRadio charcter = CamelFeederrCleanedRadio.yes;

  void onChange(CamelFeederrCleanedRadio value) {
    charcter = value;
    update();
  }
}
