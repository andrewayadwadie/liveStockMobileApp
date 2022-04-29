import 'package:get/get.dart';

enum CamelAntibioticsUseRadio { protection, treatment }

class CamelAntibioticsUseRadioController extends GetxController {
  CamelAntibioticsUseRadio charcter = CamelAntibioticsUseRadio.protection;

  void onChange(CamelAntibioticsUseRadio value) {
    charcter = value;
    update();
  }
}
