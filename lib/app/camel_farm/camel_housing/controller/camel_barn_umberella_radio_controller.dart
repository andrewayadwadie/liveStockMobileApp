

import 'package:get/get.dart';

enum CamelBarnUmberella { yes, no }

class CamelBarnUmberellaController extends GetxController {
  CamelBarnUmberella charcter = CamelBarnUmberella.yes;

  void onChange(CamelBarnUmberella value) {
    charcter = value;
    update();
  }
}
