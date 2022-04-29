import 'package:get/get.dart';

enum CamelSoresRadioController { yes, no }

class CamelSoresRadioControllerController extends GetxController {
  CamelSoresRadioController charcter = CamelSoresRadioController.yes;

  void onChange(CamelSoresRadioController value) {
    charcter = value;
    update();
  }
}
