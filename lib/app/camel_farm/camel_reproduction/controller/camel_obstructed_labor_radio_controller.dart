import 'package:get/get.dart';

enum CamelobstructedLaborRadio { yes, no }

class CamelobstructedLaborRadioController extends GetxController {
  CamelobstructedLaborRadio charcter = CamelobstructedLaborRadio.yes;

  void onChange(CamelobstructedLaborRadio value) {
    charcter = value;
    update();
  }
}
