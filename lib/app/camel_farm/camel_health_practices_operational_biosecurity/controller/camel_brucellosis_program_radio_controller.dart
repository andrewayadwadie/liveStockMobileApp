import 'package:get/get.dart';

enum CamelBrucellosisProgramRadio { yes, no }

class CamelBrucellosisProgramRadioController extends GetxController {
  CamelBrucellosisProgramRadio charcter = CamelBrucellosisProgramRadio.yes;

  void onChange(CamelBrucellosisProgramRadio value) {
    charcter = value;
    update();
  }
}
