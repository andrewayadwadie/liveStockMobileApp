import 'package:get/get.dart';

enum CamelCleanWatering { clean, unClean }

class CamelCleanWateringController extends GetxController {
  CamelCleanWatering charcter = CamelCleanWatering.clean;

  void onChange(CamelCleanWatering value) {
    charcter = value;
    update();
  }
}
