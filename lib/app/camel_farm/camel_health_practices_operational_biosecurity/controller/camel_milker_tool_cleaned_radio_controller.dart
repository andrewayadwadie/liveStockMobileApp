
import 'package:get/get.dart';

enum CamelMilkerToolsCleanedRadio { yes, no }

class CamelMilkerToolsCleanedRadioController extends GetxController {
  CamelMilkerToolsCleanedRadio charcter = CamelMilkerToolsCleanedRadio.yes;

  void onChange(CamelMilkerToolsCleanedRadio value) {
    charcter = value;
    update();
  }
}
