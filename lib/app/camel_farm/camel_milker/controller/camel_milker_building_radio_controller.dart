import 'package:get/get.dart';

enum CamelMilkerBuildingRadio { milkerBuilding, barn }

class CamelMilkerBuildingRadioController extends GetxController {
  CamelMilkerBuildingRadio charcter = CamelMilkerBuildingRadio.milkerBuilding;

  void onChange(CamelMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
