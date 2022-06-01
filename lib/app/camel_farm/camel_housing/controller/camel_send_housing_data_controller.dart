import 'dart:developer';

import 'package:flutter/material.dart';
 
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../../camel_feeding/view/screen/camel_feeding_screen.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../general_management/service/camel_send_general_data_service.dart';
import 'animal_pens_radio_controller.dart';
import 'camel_barn_umberella_radio_controller.dart';
import 'camel_clean_floor_radio_controller.dart';
import 'camel_clean_watering_radio_controller.dart';
import 'camel_drinking_radio_controller.dart';
import 'camel_farm_fence_radio_controller.dart';
import 'camel_feeding_clean_radio_controller.dart';
import 'camel_feeding_status_radio_controller.dart';
import 'camel_fence_broken_or_not_radio_controller.dart';
import 'camel_housig_floor_type_controller.dart';
import 'camel_housing_textfield_controller.dart';
import 'camel_location_feeding_controller.dart';
import 'camel_watering_location_radio_controlling.dart';

class CamelHousingSendDataController extends GetxController {
  CamelPensRadioController pensRadioCtrl = Get.put(CamelPensRadioController());
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
  CamelHousingTextFieldController textCtrl =
      Get.put(CamelHousingTextFieldController());

  CamelFenceController fenceCtrl = Get.put(CamelFenceController());

  void fillCamelHousingAnswerList() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(id: 48, answer: textCtrl.barnsNo);
    sendDataCtrl.addAnswer(id: 49, answer: textCtrl.barnArea);
    sendDataCtrl.addAnswer(id: 50, answer: textCtrl.animalBarn);
    sendDataCtrl.addAnswer(id: 62, answer: textCtrl.wateringNo);
    sendDataCtrl.addAnswer(id: 69, answer: textCtrl.drinkNo);
    sendDataCtrl.addAnswer(id: 70, answer: textCtrl.feedsNo);
    sendDataCtrl.addAnswer(id: 77, answer: textCtrl.regimenfeedsNo);
    //!--------------------------
    //* Radio button
    if (pensRadioCtrl.charcter == CamelPensRadio.yes) {
      sendDataCtrl.addAnswer(id: 46, answer: "");
    } else if (pensRadioCtrl.charcter == CamelPensRadio.no) {
      sendDataCtrl.addAnswer(id: 47, answer: "");
    } else if (pensRadioCtrl.charcter == CamelPensRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 322, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (fenceCtrl.charcter == CamelFence.yes) {
      sendDataCtrl.addAnswer(id: 420, answer: "");
    } else if (fenceCtrl.charcter == CamelFence.no) {
      sendDataCtrl.addAnswer(id: 421, answer: "");
    } else if (fenceCtrl.charcter == CamelFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 422, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == CamelBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else if (barnUmberellaCtrl.charcter == CamelBarnUmberella.no) {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    } else if (barnUmberellaCtrl.charcter == CamelBarnUmberella.noAnswer) {
      sendDataCtrl.addAnswer(id: 323, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (broken.charcter == CamelBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else if (broken.charcter == CamelBrokenFence.good) {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    } else if (broken.charcter == CamelBrokenFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 324, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (floortypeCtrl.floorTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 55, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 56, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 57, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 58, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 5) {
      sendDataCtrl.addAnswer(id: 59, answer: "");
    }
    if (floortypeCtrl.floorTypeText.value == 'Floor Type') {
      sendDataCtrl.addAnswer(id: 325, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFloorCtrl.charcter == CamelCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else if (cleanFloorCtrl.charcter == CamelCleanFloor.unClean) {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    } else if (cleanFloorCtrl.charcter == CamelCleanFloor.noAnswer) {
      sendDataCtrl.addAnswer(id: 326, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == CamelWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        CamelWateringLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        CamelWateringLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 327, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == CamelCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else if (cleanWateringCtrl.charcter == CamelCleanWatering.unClean) {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    } else if (cleanWateringCtrl.charcter == CamelCleanWatering.noAnswer) {
      sendDataCtrl.addAnswer(id: 328, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == CamelDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else if (dinkingCtrl.charcter == CamelDinkingRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    } else if (dinkingCtrl.charcter == CamelDinkingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 329, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == CamelFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else if (feedingLocationCtrl.charcter == CamelFeedingLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    } else if (feedingLocationCtrl.charcter == CamelFeedingLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 330, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == CamelCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else if (cleanFeedingCtrl.charcter == CamelCleanFeeding.unClean) {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    } else if (cleanFeedingCtrl.charcter == CamelCleanFeeding.noAnswer) {
      sendDataCtrl.addAnswer(id: 331, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingStatusCtrl.charcter == CamelFeedingStausRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else if (feedingStatusCtrl.charcter ==
        CamelFeedingStausRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    } else if (feedingStatusCtrl.charcter == CamelFeedingStausRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 332, answer: "");
    }
  }

  void sendCamelHousingData(BuildContext context) async {
 
    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      FarmCamelStatusPref.setCamelStatusValue(2);

      Get.offAll(() => CamelFeedingScreen());
    } else if (res == 401) {
      sendDataCtrl.answers.clear();
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        'Server Error $res',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    } else if (res.runtimeType == String) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        ' $res',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    }
    log("message : $res");
  }
}
