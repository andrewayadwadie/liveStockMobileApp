import 'package:get/get.dart';

enum CamelPensRadio { yes, no }

class CamelPensRadioController extends GetxController {
  CamelPensRadio charcter = CamelPensRadio.yes;

  void onChange(CamelPensRadio value) {
    charcter = value;
    update();
  }
}
