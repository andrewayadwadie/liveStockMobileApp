

import 'package:get/get.dart';

enum CamelFence { yes, no }

class CamelFenceController extends GetxController {
  CamelFence charcter = CamelFence.yes;

  void onChange(CamelFence value) {
    charcter = value;
    update();
  }
}
