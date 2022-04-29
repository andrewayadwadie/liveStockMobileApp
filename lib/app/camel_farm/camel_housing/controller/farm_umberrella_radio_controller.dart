import 'package:get/get.dart';

enum CamelFarmUmberella { yes, no }

class CamelFarmUmberellaController extends GetxController {
  CamelFarmUmberella charcter = CamelFarmUmberella.yes;

  void onChange(CamelFarmUmberella value) {
    charcter = value;
    update();
  }
}
