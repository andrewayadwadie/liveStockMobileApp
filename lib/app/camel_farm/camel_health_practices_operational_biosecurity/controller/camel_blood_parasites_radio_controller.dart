import 'package:get/get.dart';

enum CamelbloodParasitesRadio { yes, no }

class CamelbloodParasitesRadioController extends GetxController {
  CamelbloodParasitesRadio charcter = CamelbloodParasitesRadio.yes;

  void onChange(CamelbloodParasitesRadio value) {
    charcter = value;
    update();
  }
}
