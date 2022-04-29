import 'package:get/get.dart';

enum CamelCleanVisitorRadio { yes, no }

class CamelCleanVisitorRadioController extends GetxController {
  CamelCleanVisitorRadio charcter = CamelCleanVisitorRadio.yes;

  void onChange(CamelCleanVisitorRadio value) {
    charcter = value;
    update();
  }
}
