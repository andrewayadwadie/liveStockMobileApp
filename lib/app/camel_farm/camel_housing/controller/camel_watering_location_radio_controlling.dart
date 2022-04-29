import 'package:get/get.dart';

enum CamelWateringLocation { underCanopy, outdoors }

class CamelWateringLocationController extends GetxController {
  CamelWateringLocation charcter = CamelWateringLocation.underCanopy;

  void onChange(CamelWateringLocation value) {
    charcter = value;
    update();
  }
}
