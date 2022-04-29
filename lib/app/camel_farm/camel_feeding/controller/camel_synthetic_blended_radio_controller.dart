import 'package:get/get.dart';

enum CamelSyntheticBlendedRadio { synthetic,blended }

class CamelSyntheticBlendedRadioController extends GetxController {
  CamelSyntheticBlendedRadio charcter = CamelSyntheticBlendedRadio.synthetic;

  void onChange(CamelSyntheticBlendedRadio value) {
    charcter = value;
    update();
  }
}
