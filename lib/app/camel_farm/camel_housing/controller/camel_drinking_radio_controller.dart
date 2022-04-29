import 'package:get/get.dart';

enum CamelDinkingRadio { availableAllDay, specificTimesaDay }

class CamelDinkingRadioController extends GetxController {
  CamelDinkingRadio charcter = CamelDinkingRadio.availableAllDay;

  void onChange(CamelDinkingRadio value) {
    charcter = value;
    update();
  }
}
