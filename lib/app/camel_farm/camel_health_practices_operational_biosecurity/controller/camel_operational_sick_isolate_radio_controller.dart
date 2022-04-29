import 'package:get/get.dart';

enum CamelsickIsolateRadio { yes, no }

class CamelsickIsolateRadioController extends GetxController {
  CamelsickIsolateRadio charcter = CamelsickIsolateRadio.yes;

  void onChange(CamelsickIsolateRadio value) {
    charcter = value;
    update();
  }
}
