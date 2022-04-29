import 'package:get/get.dart';

enum CamelWaterSourceRadio { treated, untreated }

class CamelWaterSourceRadioController extends GetxController {
  CamelWaterSourceRadio charcter = CamelWaterSourceRadio.treated;

  void onChange(CamelWaterSourceRadio value) {
    charcter = value;
    update();
  }
}
