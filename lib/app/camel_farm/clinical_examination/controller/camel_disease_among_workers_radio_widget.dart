import 'package:get/get.dart';

enum CamelDiseaseAmongWorkersRadio { yes, no }

class CamelDiseaseAmongWorkersRadioController extends GetxController {
  CamelDiseaseAmongWorkersRadio charcter = CamelDiseaseAmongWorkersRadio.yes;

  void onChange(CamelDiseaseAmongWorkersRadio value) {
    charcter = value;
    update();
  }
}
