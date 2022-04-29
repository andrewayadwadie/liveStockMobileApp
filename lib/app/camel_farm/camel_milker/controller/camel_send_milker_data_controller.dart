import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'camel_milker_building_radio_controller.dart';
import 'camel_milker_building_type_radio_controller.dart';
import 'camel_milker_place_radio_controller.dart';
import 'camel_milker_type_controller.dart';

class CamelSendMilkerDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelMilkerTypeController milkerTypeCtrl =
      Get.put(CamelMilkerTypeController());
  CamelMilkerPlaceRadioController milkerPlaceCtrl =
      Get.put(CamelMilkerPlaceRadioController());

  CamelMilkerBuildingRadioController milkerBuildingCtrl =
      Get.put(CamelMilkerBuildingRadioController());
  CamelMilkerBuildingTypeRadioController milkerBuildingTypeCtrl =
      Get.put(CamelMilkerBuildingTypeRadioController());
  void fillAnswerListWithData() {
    //* dropdown
    if (milkerTypeCtrl.milkerTypeId.value == 0) {
      sendDataCtrl.addAnswer(id: 121, answer: "");
    }
    if (milkerTypeCtrl.milkerTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 122, answer: "");
    }
    if (milkerTypeCtrl.milkerTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 123, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 125, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 126, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingCtrl.charcter ==
        CamelMilkerBuildingRadio.milkerBuilding) {
      sendDataCtrl.addAnswer(id: 127, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 128, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerBuildingTypeCtrl.charcter ==
        CamelMilkerBuildingTypeRadio.fullyClosed) {
      sendDataCtrl.addAnswer(id: 129, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 130, answer: "");
    }
  }
}
