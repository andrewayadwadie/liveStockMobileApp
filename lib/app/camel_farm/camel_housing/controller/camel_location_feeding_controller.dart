import 'package:get/get.dart';

enum CamelFeedingLocation { underCanopy, outdoors }

class CamelFeedingLocationController extends GetxController {
  CamelFeedingLocation charcter = CamelFeedingLocation.underCanopy;

  void onChange(CamelFeedingLocation value) {
    charcter = value;
    update();
  }
}
