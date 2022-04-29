import 'package:get/get.dart';

enum CamelCoronaProgramRadio { yes, no }

class CamelCoronaProgramRadioController extends GetxController {
  CamelCoronaProgramRadio charcter = CamelCoronaProgramRadio.yes;

  void onChange(CamelCoronaProgramRadio value) {
    charcter = value;
    update();
  }
}
