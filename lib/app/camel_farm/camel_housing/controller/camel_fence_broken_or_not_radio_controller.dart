

import 'package:get/get.dart';

enum CamelBrokenFence { broken , good }

class CamelBrokenFenceController extends GetxController {
  CamelBrokenFence charcter = CamelBrokenFence.broken;

  void onChange(CamelBrokenFence value) {
    charcter = value;
    update();
  }
}
