import 'package:get/get.dart';

enum CamelMIlkSampleRadio { yes, no }

class CamelMIlkSampleRadioController extends GetxController {
  CamelMIlkSampleRadio charcter = CamelMIlkSampleRadio.yes;

  void onChange(CamelMIlkSampleRadio value) {
    charcter = value;
    update();
  }
}
