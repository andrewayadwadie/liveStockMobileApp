import 'package:get/get.dart';

enum CamelMilkerExistRadio { yes, no }

class CamelMilkerExistRadioController extends GetxController {
  CamelMilkerExistRadio charcter = CamelMilkerExistRadio.yes;

  void onChange(CamelMilkerExistRadio value) {
    charcter = value;
    update();
  }
}

