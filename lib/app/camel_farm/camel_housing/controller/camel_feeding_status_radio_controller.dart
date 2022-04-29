import 'package:get/get.dart';

enum CamelFeedingStausRadio { availableAllDay, specificTimesaDay }

class CamelFeedingStausRadioController extends GetxController {
  CamelFeedingStausRadio charcter = CamelFeedingStausRadio.availableAllDay;

  void onChange(CamelFeedingStausRadio value) {
    charcter = value;
    update();
  }
}
 