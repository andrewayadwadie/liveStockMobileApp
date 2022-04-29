import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../camel_housing/view/screen/camel_housing_scren.dart';
import '../service/camel_send_general_data_service.dart';
import 'camel_defenation_radio_controller.dart';
import 'camel_distance_movement_controller.dart';
import 'camel_general_checkbox_controller.dart';
import 'camel_move_outside_radio_controller.dart';
import 'camel_move_outsite_check_controller.dart';
import 'camel_move_times_check_controller.dart';
import 'camel_new_animal_bought_radio_controller.dart';
import 'camel_reason_buying_new_animal_controller.dart';
import 'camel_send_camel_herd_data_controller.dart';
import 'camel_source_buy_animal_controller.dart';
import 'camel_time_buy_animal_controller.dart';
import 'mix_checkbox_controller.dart';
import 'wild_radio_controller.dart';

class CamelGeneralSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelDefenationController camelDefenationCtrl =
      Get.put(CamelDefenationController());
  CamelGeneralCheckboxController record =
      Get.put(CamelGeneralCheckboxController(choices: [
    "animal identification record", //? push in api object with id 4
    "census record", //? push in api object with id 5
    "production record", //? push in api object with id 6
    " sick record", //? push in api object with id 7
    "treatments", //? push in api object with id 8
    "record of fortifications ", //? push in api object with id 9
    "log visits"
  ]));
  CamelWildController wildCtrl = Get.put(CamelWildController());
  CamelMixCheckboxController mixcheck =
      Get.put(CamelMixCheckboxController(choices: [
    " vaccination campaigns", //? push in api object with id 13
    "veterinary clinics ", //? push in api object with id 14
    "markets", //? push in api object with id 15
    "Race", //? push in api object with id 16
    "other", //? push in api object with id 17
  ]));

  CamelMoveOutsideController moveCtrl = Get.put(CamelMoveOutsideController());

  CamelMoveCheckboxController moveCheck =
      Get.put(CamelMoveCheckboxController(choices: [
    ' driver', //? push in api object with id 20
    "massacres", //? push in api object with id 21
    "veterinary clinics", //? push in api object with id 22
    "race", //? push in api object with id 23
    "Export", //? push in api object with id 24
    "other", //? push in api object with id 25
  ]));

  CamelMoveTimesCheckboxController moveTimesCtrl =
      Get.put(CamelMoveTimesCheckboxController(choices: [
    'Throughout the year', //? push in api object with id 26
    "seasonal", //? push in api object with id 27
  ]));

  CamelDistanceMovementController distanceMovementCtrl =
      Get.put(CamelDistanceMovementController());
  CamelNewAnimalBoughtController newanimal =
      Get.put(CamelNewAnimalBoughtController());

  CamelreasonBuyingNewanimalController reasonBuyingNewanimalCtrl =
      Get.put(CamelreasonBuyingNewanimalController());
  CamelTimesBuyingNewanimalController timesBuyingNewanimalCtrl =
      Get.put(CamelTimesBuyingNewanimalController());

  CamelSourcesBuyingNewanimalController sourceNewId =
      Get.put(CamelSourcesBuyingNewanimalController());

  DateController dateCtrl = Get.put(DateController());

  void fillAnswerListWithData() {
    //!--------------------------
    //* Radio button
    if (camelDefenationCtrl.charcter == CamelDefenation.yes) {
      sendDataCtrl.addAnswer(id: 2, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 3, answer: "");
    }

    //!--------------------------
    //*check box
    if (record.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 4, answer: "");
    }
    if (record.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 5, answer: "");
    }
    if (record.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 6, answer: "");
    }
    if (record.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 7, answer: "");
    }
    if (record.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 8, answer: "");
    }
    if (record.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 9, answer: "");
    }
    if (record.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 10, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wildCtrl.charcter == CamelWild.yes) {
      sendDataCtrl.addAnswer(id: 11, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 12, answer: "");
    }
    //!--------------------------
    //*check box
    if (mixcheck.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 13, answer: "");
    }
    if (mixcheck.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 14, answer: "");
    }
    if (mixcheck.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 15, answer: "");
    }
    if (mixcheck.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 16, answer: "");
    }
    if (mixcheck.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 17, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (moveCtrl.charcter == CamelMoveOutside.yes) {
      sendDataCtrl.addAnswer(id: 18, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 19, answer: "");
    }
    //!--------------------------
    //*check box
    if (moveCheck.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 20, answer: "");
    }
    if (moveCheck.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 21, answer: "");
    }
    if (moveCheck.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 22, answer: "");
    }
    if (moveCheck.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 23, answer: "");
    }
    if (moveCheck.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 24, answer: "");
    }
    if (moveCheck.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 25, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (moveTimesCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 26, answer: "");
    }
    if (moveTimesCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 27, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (distanceMovementCtrl.distanceId.value == 0) {
      sendDataCtrl.addAnswer(id: 28, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 1) {
      sendDataCtrl.addAnswer(id: 29, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 2) {
      sendDataCtrl.addAnswer(id: 30, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (newanimal.charcter == CamelNewAnimalBought.yes) {
      sendDataCtrl.addAnswer(id: 31, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 32, answer: "");
    }

    //!--------------------------
    //*dropdown
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 0) {
      sendDataCtrl.addAnswer(id: 33, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 34, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 35, answer: "");
    }
    //????????????????????????????????????????????????????????????????????
    //!--------------------------
    //*dropdown
    if (timesBuyingNewanimalCtrl.timesNewId.value == 0) {
      sendDataCtrl.addAnswer(id: 36, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 37, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 38, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 39, answer: "");
    }
    //!--------------------------
    //*dropdown
    if (sourceNewId.sourceNewId.value == 0) {
      sendDataCtrl.addAnswer(id: 40, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 41, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 42, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 43, answer: "");
    }
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 44,
        answer:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");
    //!--------------------------

    log("answer 1 : ${sendDataCtrl.answers}");
  }

  void sendData() async {
    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res==200) {
      FarmCamelGeneralPref.setCamelGeneralValue(FarmCamelHerdPref.getCamelHerdValue());

      Get.offAll(() => CamelHousingScreen(
          generalId:  FarmCamelHerdPref.getCamelHerdValue()));
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
