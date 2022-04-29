import 'package:get/get.dart';

enum CamelIsolatePlaceRadio { yes, no }

class CamelIsolatePlaceRadioController extends GetxController {
  CamelIsolatePlaceRadio charcter = CamelIsolatePlaceRadio.yes;

  void onChange(CamelIsolatePlaceRadio value) {
    charcter = value;
    update();
  }
}
