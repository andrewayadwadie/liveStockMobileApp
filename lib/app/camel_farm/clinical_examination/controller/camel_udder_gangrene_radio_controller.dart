import 'package:get/get.dart';

enum CamelUdderGangrene { yes, no }

class CamelUdderGangreneController extends GetxController {
  CamelUdderGangrene charcter = CamelUdderGangrene.yes;

  void onChange(CamelUdderGangrene value) {
    charcter = value;
    update();
  }
}
