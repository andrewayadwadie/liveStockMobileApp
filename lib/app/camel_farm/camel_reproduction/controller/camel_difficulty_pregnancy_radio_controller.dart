import 'package:get/get.dart';

enum CamelDifficultyPregnancyRadio { yes, no }

class CamelDifficultyPregnancyRadioController extends GetxController {
  CamelDifficultyPregnancyRadio charcter = CamelDifficultyPregnancyRadio.yes;

  void onChange(CamelDifficultyPregnancyRadio value) {
    charcter = value;
    update();
  }
}
