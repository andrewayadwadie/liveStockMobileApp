import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'package:get/get.dart';
import '../../../../utils/controller/current_location_controller.dart';
import 'camel_clean_vechicles_radio_controller.dart';
import 'camel_clean_visitor_radio_controller.dart';
import 'camel_good_sanitation_radio_controller.dart';
import 'camel_visitor_cloths_radio_controller.dart';
import 'camel_water_source_radio_controller.dart';
import 'camel_workers_cloths_radio_controller.dart';

class CamelHealthPracticesSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelCleanVehiclesRadioController cleanVehiclesRadioCtrl =
      Get.put(CamelCleanVehiclesRadioController());
  CamelCleanVisitorRadioController cleanVisitorRadioCtrl =
      Get.put(CamelCleanVisitorRadioController());
  CamelVisitorClothsRadioController visitorClothsRadioCtrl =
      Get.put(CamelVisitorClothsRadioController());
  CamelWorkersClothsRadioController workersClothsRadioCtrl =
      Get.put(CamelWorkersClothsRadioController());

  CamelWaterSourceRadioController waterSourceRadioCtrl =
      Get.put(CamelWaterSourceRadioController());
  CamelGoodSanitationRadioController goodSanitationRadioCtrl =
      Get.put(CamelGoodSanitationRadioController());

  void fillAnswerListWithData() {
    //!--------------------------
    //* Radio button
    if (cleanVehiclesRadioCtrl.charcter == CamelCleanVehiclesRadio.yes) {
      sendDataCtrl.addAnswer(id: 131, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 132, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanVisitorRadioCtrl.charcter == CamelCleanVisitorRadio.yes) {
      sendDataCtrl.addAnswer(id: 133, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 134, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (visitorClothsRadioCtrl.charcter == CamelVisitorClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 135, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 136, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (workersClothsRadioCtrl.charcter == CamelWorkersClothsRadio.yes) {
      sendDataCtrl.addAnswer(id: 138, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 139, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (waterSourceRadioCtrl.charcter == CamelWaterSourceRadio.treated) {
      sendDataCtrl.addAnswer(id: 141, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 142, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (goodSanitationRadioCtrl.charcter == CamelGoodSanitationRadio.yes) {
      sendDataCtrl.addAnswer(id: 148, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 149, answer: "");
    }
  }
}
