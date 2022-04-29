import 'package:get/get.dart';

enum CamelUdderWashedRadio { after, before }

class CamelUdderWashedRadioController extends GetxController {
  CamelUdderWashedRadio charcter = CamelUdderWashedRadio.after;

  void onChange(CamelUdderWashedRadio value) {
    charcter = value;
    update();
  }
}
