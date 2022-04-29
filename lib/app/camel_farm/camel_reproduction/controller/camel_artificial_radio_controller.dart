import 'package:get/get.dart';

enum CamelArtificialRadio { yes, no }

class CamelArtificialRadioController extends GetxController {
  CamelArtificialRadio charcter = CamelArtificialRadio.yes;

  void onChange(CamelArtificialRadio value) {
    charcter = value;
    update();
  }
}
