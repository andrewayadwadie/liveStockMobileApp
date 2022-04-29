import 'package:get/get.dart';

enum CamelWoundsRadioController { yes, no }

class CamelWoundsRadioControllerController extends GetxController {
  CamelWoundsRadioController charcter = CamelWoundsRadioController.yes;

  void onChange(CamelWoundsRadioController value) {
    charcter = value;
    update();
  }
}
