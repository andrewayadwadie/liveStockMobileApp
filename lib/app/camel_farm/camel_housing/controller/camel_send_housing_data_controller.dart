import 'dart:developer';

import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'camel_barn_umberella_radio_controller.dart';
import 'camel_clean_floor_radio_controller.dart';
import 'camel_clean_watering_radio_controller.dart';
import 'camel_drinking_radio_controller.dart';
import 'camel_feeding_clean_radio_controller.dart';
import 'camel_feeding_status_radio_controller.dart';
import 'camel_fence_broken_or_not_radio_controller.dart';
import 'camel_housig_floor_type_controller.dart';
import 'camel_location_feeding_controller.dart';
import 'camel_watering_location_radio_controlling.dart';

class CamelHousingSendDataController extends GetxController {
  CamelBarnUmberellaController barnUmberellaCtrl =
      Get.put(CamelBarnUmberellaController());
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelBrokenFenceController broken = Get.put(CamelBrokenFenceController());
  CamelHousingFloorTypeController floortypeCtrl =
      Get.put(CamelHousingFloorTypeController());

  CamelCleanFloorController cleanFloorCtrl =
      Get.put(CamelCleanFloorController());
  CamelWateringLocationController wateringLocationCtrl =
      Get.put(CamelWateringLocationController());

  CamelCleanWateringController cleanWateringCtrl =
      Get.put(CamelCleanWateringController());
  CamelDinkingRadioController dinkingCtrl =
      Get.put(CamelDinkingRadioController());
  CamelFeedingLocationController feedingLocationCtrl =
      Get.put(CamelFeedingLocationController());
  CamelCleanFeedingController cleanFeedingCtrl =
      Get.put(CamelCleanFeedingController());
  CamelFeedingStausRadioController feedingStatusCtrl =
      Get.put(CamelFeedingStausRadioController());
  void fillCamelHousingAnswerList() {
    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == CamelBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (broken.charcter == CamelBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (floortypeCtrl.floorTypeId.value == 0) {
      sendDataCtrl.addAnswer(id: 55, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 56, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 57, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 58, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 59, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFloorCtrl.charcter == CamelCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == CamelWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == CamelCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == CamelDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == CamelFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == CamelCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == CamelCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    }
    log("answer 1 : ${sendDataCtrl.answers}");
  }

  void sendCamelHousingData() {}
}
