import 'package:get/get.dart';

enum CamelCleanFeeding { clean, unClean }

class CamelCleanFeedingController extends GetxController {
  CamelCleanFeeding charcter = CamelCleanFeeding.clean;

  void onChange(CamelCleanFeeding value) {
    charcter = value;
    update();
  }
}
