import 'dart:developer';

import 'package:flutter/material.dart';
 
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../add_new_farm/controller/activity_type_field_controller.dart';
import '../../../add_new_farm/controller/edu_sys_controller.dart';
import '../../../add_new_farm/controller/size_field_controller.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../goat_general_management/view/screen/goat_general_management_screen.dart';
import '../services/goat_send_herd_data.dart';
import 'goat_dynasty_controller.dart';
import 'goat_herd_dynasty_controller.dart';
import 'goat_herd_form_controller.dart';
 

class GoatSendHerdDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  GoatHerdFormController herdFormCtrl =
      Get.put(GoatHerdFormController(), permanent: true);
  GoatDynastyController dynastyCtrl = Get.put(GoatDynastyController());

  SizeFieldController sizeCtrl = Get.put(SizeFieldController());

  ActivityTypeFieldController activityCtrl =
      Get.put(ActivityTypeFieldController());

  EduSysController eduSysCtrl = Get.put(
      EduSysController(camelHerdId: FarmAnimalTypePref.getAnimalTypeValue()));

  DateController dateCtrl = Get.put(DateController());

  GoatHerdDynastyController dynastyHerdCtrl =
      Get.put(GoatHerdDynastyController(goatHerdId: 4));

  void sendHerdData( BuildContext context) async {
 
    var res = await SendGoatHerdData.sendGoatHerdData(
        numberOfAnimals: int.parse(herdFormCtrl.numberOfAnimals),
        numberOfCases: int.parse(herdFormCtrl.numberOfCases),
        numberOfAdults: int.parse(herdFormCtrl.numberOfAdults),
        numberOfVirginity: int.parse(herdFormCtrl.numberOfVirginity),
        numberOfAged: int.parse(herdFormCtrl.numberOfAged),
        numberOfInfant: int.parse(herdFormCtrl.numberOfInfant),
        numberOfAblaction: int.parse(herdFormCtrl.numberOfAblaction),
        numberOfMales: int.parse(herdFormCtrl.numberOfMales),
        numberOfFemales: int.parse(herdFormCtrl.numberOfFemales),
        numberOfDeaths: int.parse(herdFormCtrl.numberOfDeaths),
        numberOfSuddenDeath: int.parse(herdFormCtrl.numberOfSuddenDeath),
        farmId: FarmPref.getValue(),
        eductionSystemId: eduSysCtrl.educationId,
        animalStrainId: dynastyHerdCtrl.dynastyId,
        note: herdFormCtrl.note,
        size: sizeCtrl.sizeText.value,
        activityType: activityCtrl.activityTypeText.value,
        lat: " ${location.currentLat ?? 0.0}",
        long: "${location.currentLong ?? 0.0}",
        dateOfEpidemiologicalSurvey:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");

    log("""
        numberOfAnimals: ${int.parse(herdFormCtrl.numberOfAnimals)},
        numberOfCases: ${int.parse(herdFormCtrl.numberOfCases)},
        numberOfAdults: ${int.parse(herdFormCtrl.numberOfAdults)},
        numberOfVirginity: ${int.parse(herdFormCtrl.numberOfVirginity)},
        numberOfAged:${int.parse(herdFormCtrl.numberOfAged)},
        numberOfInfant: ${int.parse(herdFormCtrl.numberOfInfant)},
        numberOfAblaction: ${int.parse(herdFormCtrl.numberOfAblaction)},
        numberOfMales: ${int.parse(herdFormCtrl.numberOfMales)},
        numberOfFemales: ${int.parse(herdFormCtrl.numberOfFemales)},
        numberOfDeaths: ${int.parse(herdFormCtrl.numberOfDeaths)},
        numberOfSuddenDeath: ${int.parse(herdFormCtrl.numberOfSuddenDeath)},
        farmId: ${FarmPref.getValue()},
        eductionSystemId: ${eduSysCtrl.educationId},
        animalStrainId: ${dynastyHerdCtrl.dynastyId},
        note: ${herdFormCtrl.note},
        size: ${sizeCtrl.sizeText.value},
        activityType: activityCtrl.activityTypeText.value},
        lat: " ${location.currentLat ?? 0.0}",
        long: "${location.currentLong ?? 0.0}",
        dateOfEpidemiologicalSurvey:
        "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} "

""");

log("herd ${ FarmGoatHerdPref.getGoatHerdValue()}");
    if (res.runtimeType == double) {
      FarmGoatHerdPref.setGoatHerdValue(res.toInt());
      log("Goat herd response in local storage double ${FarmGoatHerdPref.getGoatHerdValue()}");
      Get.offAll(() => GoatGeneralManagementScreen(
          goatHerdId: FarmGoatHerdPref.getGoatHerdValue()));
    } else if (res == 401) {
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
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
    }
  }
}
