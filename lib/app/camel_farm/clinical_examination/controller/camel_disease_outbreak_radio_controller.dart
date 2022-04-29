import 'package:get/get.dart';

enum CamelDiseaseOutbreakRadio { yes, no }

class CamelDiseaseOutbreakRadioController extends GetxController {
  CamelDiseaseOutbreakRadio charcter = CamelDiseaseOutbreakRadio.yes;

  void onChange(CamelDiseaseOutbreakRadio value) {
    charcter = value;
    update();
  }
}
