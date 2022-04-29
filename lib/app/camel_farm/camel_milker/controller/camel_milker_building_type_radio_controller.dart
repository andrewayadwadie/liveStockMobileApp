import 'package:get/get.dart';

enum CamelMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy }

class CamelMilkerBuildingTypeRadioController extends GetxController {
  CamelMilkerBuildingTypeRadio charcter =
      CamelMilkerBuildingTypeRadio.fullyClosed;

  void onChange(CamelMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
