

import 'package:get/get.dart';

enum CamelCleanFloor { clean , unClean }

class CamelCleanFloorController extends GetxController {
  CamelCleanFloor charcter = CamelCleanFloor.clean;

  void onChange(CamelCleanFloor value) {
    charcter = value;
    update();
  }
}
