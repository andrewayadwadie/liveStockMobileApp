import 'package:get/get.dart';

enum CamelSemenSourceRadio { local, importation }

class CamelSemenSourceRadioController extends GetxController {
  CamelSemenSourceRadio charcter = CamelSemenSourceRadio.local;

  void onChange(CamelSemenSourceRadio value) {
    charcter = value;
    update();
  }
}
