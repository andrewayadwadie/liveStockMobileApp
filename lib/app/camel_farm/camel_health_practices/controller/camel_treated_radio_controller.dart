import 'package:get/get.dart';

enum CamelTreatedRadio { yes, no }

class CamelTreatedRadioController extends GetxController {
  CamelTreatedRadio charcter = CamelTreatedRadio.yes;

  void onChange(CamelTreatedRadio value) {
    charcter = value;
    update();
  }
}
