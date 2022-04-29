import 'dart:developer';

import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'camel_feed_type_checkbox_controller.dart';
import 'camel_feeding_date_controller.dart';
import 'camel_fooder_radio_controller.dart';
import 'camel_rodents_radio_controller.dart';
import 'camel_salt_bars_radio_controller.dart';
import 'camel_storage_appropriate_radio_controller.dart';
import 'camel_synthetic_blended_radio_controller.dart';

class CamelFeedingSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelFeedingDateController dateCtrl = Get.put(CamelFeedingDateController());
  CamelSyntheticBlendedRadioController camelSyntheticBlendedRadioCtrl =
      Get.put(CamelSyntheticBlendedRadioController());

  CamelFeedTypeCheckboxController feedTypeCtrl =
      Get.put(CamelFeedTypeCheckboxController(choices: [
    "green fodder", //? push in api object with id 78
    "barley", //? push in api object with id 79
    "hay", //? push in api object with id 80
    "concentrated fodder",
  ]));

  CamelFooderRadioController fooderCtrl = Get.put(CamelFooderRadioController());
  CamelStorageAppropriateRadioController storageAppropriateCtrl =
      Get.put(CamelStorageAppropriateRadioController());

  CamelrodentsRadioController camelrodentsCtrl =
      Get.put(CamelrodentsRadioController());

  CamelSaltBarsRadioController camelSaltBarsCtrl =
      Get.put(CamelSaltBarsRadioController());

  void fillAnswerListWithData() {
    //!--------------------------
    //*check box
    if (feedTypeCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 78, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 79, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 80, answer: "");
    }
    if (feedTypeCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 81, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelSyntheticBlendedRadioCtrl.charcter ==
        CamelSyntheticBlendedRadio.blended) {
      sendDataCtrl.addAnswer(id: 82, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 83, answer: "");
    }
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 85,
        answer:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");
    //!--------------------------
    //* Radio button
    if (fooderCtrl.charcter == CamelFooderRadio.yes) {
      sendDataCtrl.addAnswer(id: 86, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 87, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (storageAppropriateCtrl.charcter == CamelStorageAppropriateRadio.yes) {
      sendDataCtrl.addAnswer(id: 88, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 89, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelrodentsCtrl.charcter == CamelrodentsRadio.yes) {
      sendDataCtrl.addAnswer(id: 90, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 91, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelSaltBarsCtrl.charcter == CamelSaltBarsRadio.yes) {
      sendDataCtrl.addAnswer(id: 92, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 93, answer: "");
    }

    log("answer 1 : ${sendDataCtrl.answers}");
  }
}
