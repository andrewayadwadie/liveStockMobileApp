
import 'package:get/get.dart';

enum CamelMilkerCleanedRadio { yes, no }

class CamelMilkerCleanedRadioController extends GetxController {
  CamelMilkerCleanedRadio charcter = CamelMilkerCleanedRadio.yes;

  void onChange(CamelMilkerCleanedRadio value) {
    charcter = value;
    update();
  }
}
