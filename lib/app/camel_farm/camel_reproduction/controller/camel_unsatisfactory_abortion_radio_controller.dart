import 'package:get/get.dart';

enum CamelUnsatisfactoryAbortionRadio { yes, no }

class CamelUnsatisfactoryAbortionRadioController extends GetxController {
  CamelUnsatisfactoryAbortionRadio charcter = CamelUnsatisfactoryAbortionRadio.yes;

  void onChange(CamelUnsatisfactoryAbortionRadio value) {
    charcter = value;
    update();
  }
}
