import 'package:get/get.dart';

enum CamelDipperRadio { after, before }

class CamelDipperRadioController extends GetxController {
  CamelDipperRadio charcter = CamelDipperRadio.after;

  void onChange(CamelDipperRadio value) {
    charcter = value;
    update();
  }
}
