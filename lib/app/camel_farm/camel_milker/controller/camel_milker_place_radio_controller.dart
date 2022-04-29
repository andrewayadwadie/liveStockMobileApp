import 'package:get/get.dart';

enum CamelMilkerPlaceRadio { yes, no }

class CamelMilkerPlaceRadioController extends GetxController {
  CamelMilkerPlaceRadio charcter = CamelMilkerPlaceRadio.yes;

  void onChange(CamelMilkerPlaceRadio value) {
    charcter = value;
    update();
  }
}
