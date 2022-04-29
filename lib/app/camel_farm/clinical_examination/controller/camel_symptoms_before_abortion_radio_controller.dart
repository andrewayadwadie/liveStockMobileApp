import 'package:get/get.dart';

enum CamelSymptomsBeforeAbortionRadio { yes, no }

class CamelSymptomsBeforeAbortionRadioController extends GetxController {
  CamelSymptomsBeforeAbortionRadio charcter =
      CamelSymptomsBeforeAbortionRadio.yes;

  void onChange(CamelSymptomsBeforeAbortionRadio value) {
    charcter = value;
    update();
  }
}
