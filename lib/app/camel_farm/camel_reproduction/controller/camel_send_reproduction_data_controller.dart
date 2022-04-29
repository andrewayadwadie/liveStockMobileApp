import 'dart:developer';

import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'camel_artificial_radio_controller.dart';
import 'camel_breed_type_controller.dart';
import 'camel_difficulty_pregnancy_radio_controller.dart';
import 'camel_obstructed_labor_radio_controller.dart';
import 'camel_reproduction_radio_controller.dart';
import 'camel_reproduction_way_controller.dart';
import 'camel_semen_source_controller.dart';
import 'camel_unsatisfactory_abortion_radio_controller.dart';
import 'fertilization_method_controller.dart';

class CamelReproductionSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelReproductionRadioController camelReproductionRadioCtrl =
      Get.put(CamelReproductionRadioController());
  CamelReproductionWayController camelReproductionWayCtrl =
      Get.put(CamelReproductionWayController());
  CamelArtificialRadioController camelArtificialRadioCtrl =
      Get.put(CamelArtificialRadioController());
  CamelBreedTypeController camelBreedTypeCtrl =
      Get.put(CamelBreedTypeController());

  CamelSemenSourceRadioController camelSemenSourceRadioCtrl =
      Get.put(CamelSemenSourceRadioController());
  CamelFertilizationMethodController camelFertilizationMethodCtrl =
      Get.put(CamelFertilizationMethodController());
  CamelDifficultyPregnancyRadioController camelDifficultyPregnancyCtrl =
      Get.put(CamelDifficultyPregnancyRadioController());
  CamelUnsatisfactoryAbortionRadioController camelUnsatisfactoryAbortionCtrl =
      Get.put(CamelUnsatisfactoryAbortionRadioController());
  CamelobstructedLaborRadioController camelobstructedLaborCtrl =
      Get.put(CamelobstructedLaborRadioController());

  void fillAnswerListWithData() {
    //!--------------------------
    //* Radio button
    if (camelReproductionRadioCtrl.charcter == CamelReproductionRadio.yes) {
      sendDataCtrl.addAnswer(id: 94, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 95, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (camelReproductionWayCtrl.reproductionWayId.value == 0) {
      sendDataCtrl.addAnswer(id: 96, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 1) {
      sendDataCtrl.addAnswer(id: 97, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 2) {
      sendDataCtrl.addAnswer(id: 98, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 3) {
      sendDataCtrl.addAnswer(id: 99, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 4) {
      sendDataCtrl.addAnswer(id: 100, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelArtificialRadioCtrl.charcter == CamelArtificialRadio.yes) {
      sendDataCtrl.addAnswer(id: 101, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 102, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (camelBreedTypeCtrl.breedTypeId.value == 0) {
      sendDataCtrl.addAnswer(id: 103, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 104, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 105, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 106, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelSemenSourceRadioCtrl.charcter == CamelSemenSourceRadio.local) {
      sendDataCtrl.addAnswer(id: 107, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 108, answer: "");
    } //!--------------------------
    //* dropdown
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 0) {
      sendDataCtrl.addAnswer(id: 109, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 1) {
      sendDataCtrl.addAnswer(id: 110, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 2) {
      sendDataCtrl.addAnswer(id: 111, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 3) {
      sendDataCtrl.addAnswer(id: 112, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelDifficultyPregnancyCtrl.charcter ==
        CamelDifficultyPregnancyRadio.yes) {
      sendDataCtrl.addAnswer(id: 113, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 114, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelUnsatisfactoryAbortionCtrl.charcter ==
        CamelUnsatisfactoryAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 116, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 117, answer: "");
    } //!--------------------------
    //* Radio button
    if (camelobstructedLaborCtrl.charcter == CamelobstructedLaborRadio.yes) {
      sendDataCtrl.addAnswer(id: 119, answer: "");
    } else {
      sendDataCtrl.addAnswer(id: 120, answer: "");
    }

    log("answer 1 : ${sendDataCtrl.answers}");
  }
}
