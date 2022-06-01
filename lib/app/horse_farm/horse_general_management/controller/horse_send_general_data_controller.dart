 
import 'package:flutter/material.dart';
 
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../horse_housing/view/screen/horse_housing_scren.dart';
import '../service/horse_send_general_data_service.dart';
import 'horse_defenation_radio_controller.dart';
import 'horse_distance_movement_controller.dart';
import 'horse_exist_animal_controller.dart';
import 'horse_general_checkbox_controller.dart';
import 'horse_mix_checkbox_controller.dart';
import 'horse_mix_with_animals_controller.dart';
import 'horse_move_outside_radio_controller.dart';
import 'horse_move_outsite_check_controller.dart';
import 'horse_move_times_check_controller.dart';
import 'horse_new_animal_bought_radio_controller.dart';
import 'horse_reason_buying_new_animal_controller.dart';
import 'horse_record_radio_controller.dart';
import 'horse_send_horse_herd_data_controller.dart';
import 'horse_source_buy_animal_controller.dart';
import 'horse_textfield_controller.dart';
import 'horse_time_buy_animal_controller.dart';
import 'horse_wild_radio_controller.dart';
 

class HorseGeneralSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());
  HorseDefenationController defenationCtrl =
      Get.put(HorseDefenationController());
  HorseGeneralCheckboxController record =
      Get.put(HorseGeneralCheckboxController(choices: [
    "animal identification record", //? push in api object with id 4
    "census record", //? push in api object with id 5
    "production record", //? push in api object with id 6
    " sick record", //? push in api object with id 7
    "treatments", //? push in api object with id 8
    "record of fortifications ", //? push in api object with id 9
    "log visits"
  ]));
  HorseWildController wildCtrl = Get.put(HorseWildController());
  HorseMixCheckboxController mixcheck =
      Get.put(HorseMixCheckboxController(choices: [
    " vaccination campaigns", //? push in api object with id 13
    "veterinary clinics ", //? push in api object with id 14
    "markets", //? push in api object with id 15
    "Race", //? push in api object with id 16
    "other", //? push in api object with id 17
  ]));

  HorseMoveOutsideController moveCtrl = Get.put(HorseMoveOutsideController());

  HorseMoveCheckboxController moveCheck =
      Get.put(HorseMoveCheckboxController(choices: [
    ' driver', //? push in api object with id 20
    "massacres", //? push in api object with id 21
    "veterinary clinics", //? push in api object with id 22
    "race", //? push in api object with id 23
    "Export", //? push in api object with id 24
    "other", //? push in api object with id 25
  ]));

  HorseMoveTimesCheckboxController moveTimesCtrl =
      Get.put(HorseMoveTimesCheckboxController(choices: [
    'Throughout the year', //? push in api object with id 26
    "seasonal", //? push in api object with id 27
  ]));

  HorseDistanceMovementController distanceMovementCtrl =
      Get.put(HorseDistanceMovementController());
  HorseNewAnimalBoughtController newanimal =
      Get.put(HorseNewAnimalBoughtController());

  HorsereasonBuyingNewanimalController reasonBuyingNewanimalCtrl =
      Get.put(HorsereasonBuyingNewanimalController());
  HorseTimesBuyingNewanimalController timesBuyingNewanimalCtrl =
      Get.put(HorseTimesBuyingNewanimalController());

  HorseSourcesBuyingNewanimalController sourceNewId =
      Get.put(HorseSourcesBuyingNewanimalController());

  DateController dateCtrl = Get.put(DateController());

  HorseTextFieldController textCtrl = Get.put(HorseTextFieldController());
    HorseRecordController recordCtrl = Get.put(HorseRecordController());
    HorseWithAnimalsController withAnimalsCtrl = Get.put(HorseWithAnimalsController());
  HorseAnimalExistController animalExistCtrl = Get.put(HorseAnimalExistController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 1, answer: textCtrl.workersNo);

    sendDataCtrl.addAnswer(id: 309, answer: textCtrl.detectAnimal);

    sendDataCtrl.addAnswer(id: 45, answer: textCtrl.animalCount);

    //!--------------------------
    //* Radio button
    if (defenationCtrl.charcter == HorseDefenation.yes) {
      sendDataCtrl.addAnswer(id: 2, answer: "");
    } else if (defenationCtrl.charcter == HorseDefenation.no) {
      sendDataCtrl.addAnswer(id: 3, answer: "");
    } else if(defenationCtrl.charcter == HorseDefenation.noAnswer) {
      sendDataCtrl.addAnswer(id: 310, answer: "");
    }

//!--------------------------
    //* Radio button
    if (recordCtrl.charcter == HorseRecord.yes) {
      sendDataCtrl.addAnswer(id: 405, answer: "");
    } else if (recordCtrl.charcter == HorseRecord.no) {
      sendDataCtrl.addAnswer(id: 406, answer: "");
    } else if(recordCtrl.charcter == HorseRecord.noAnswer) {
      sendDataCtrl.addAnswer(id: 407, answer: "");
    }

   //!--------------------------
    //* Radio button
    if (withAnimalsCtrl.charcter == HorseWithAnimals.yes) {
      sendDataCtrl.addAnswer(id: 408, answer: "");
    } else if (withAnimalsCtrl.charcter == HorseWithAnimals.no) {
      sendDataCtrl.addAnswer(id: 409, answer: "");
    } else if(withAnimalsCtrl.charcter == HorseWithAnimals.noAnswer) {
      sendDataCtrl.addAnswer(id: 410, answer: "");
    }

//!--------------------------
    //* Radio button
    if (animalExistCtrl.charcter == HorseAnimalExist.yes) {
      sendDataCtrl.addAnswer(id: 441, answer: "");
    } else if (animalExistCtrl.charcter == HorseAnimalExist.no) {
      sendDataCtrl.addAnswer(id: 442, answer: "");
    } else if(animalExistCtrl.charcter == HorseAnimalExist.noAnswer) {
      sendDataCtrl.addAnswer(id: 443, answer: "");
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
    if (record.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 311, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (wildCtrl.charcter == HorseWild.yes) {
      sendDataCtrl.addAnswer(id: 11, answer: "");
    } else if (wildCtrl.charcter == HorseWild.no) {
      sendDataCtrl.addAnswer(id: 12, answer: "");
    } else if(wildCtrl.charcter == HorseWild.noAnswer) {
      sendDataCtrl.addAnswer(id: 312, answer: "");
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
    if (mixcheck.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 313, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (moveCtrl.charcter == HorseMoveOutside.yes) {
      sendDataCtrl.addAnswer(id: 18, answer: "");
    } else if (moveCtrl.charcter == HorseMoveOutside.no) {
      sendDataCtrl.addAnswer(id: 19, answer: "");
    } else if(moveCtrl.charcter ==  HorseMoveOutside.noAnswer) {
      sendDataCtrl.addAnswer(id: 314, answer: "");
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
    if (moveCheck.choicesBoolList[5] == true) {}
    if (moveCheck.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 315, answer: "");
    }
    //!--------------------------
    //*check box
    if (moveTimesCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 26, answer: "");
    }
    if (moveTimesCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 27, answer: "");
    }
    if (moveTimesCtrl.choicesBoolList.where((e) => e == true).isEmpty) {
      sendDataCtrl.addAnswer(id: 316, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (distanceMovementCtrl.distanceId.value == 1) {
      sendDataCtrl.addAnswer(id: 28, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 2) {
      sendDataCtrl.addAnswer(id: 29, answer: "");
    }
    if (distanceMovementCtrl.distanceId.value == 3) {
      sendDataCtrl.addAnswer(id: 30, answer: "");
    }
    if (distanceMovementCtrl.distanceText.value == 'Horse distance movement') {
      sendDataCtrl.addAnswer(id: 317, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (newanimal.charcter == HorseNewAnimalBought.yes) {
      sendDataCtrl.addAnswer(id: 31, answer: "");
    } else if (newanimal.charcter == HorseNewAnimalBought.no) {
      sendDataCtrl.addAnswer(id: 32, answer: "");
    } else if( newanimal.charcter ==  HorseNewAnimalBought.noAnswer) {
      sendDataCtrl.addAnswer(id: 318, answer: "");
    }

    //!--------------------------
    //*dropdown
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 33, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 34, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 35, answer: "");
    }
    if (reasonBuyingNewanimalCtrl.buyNewText.value ==
        'reason to buy New animal') {
      sendDataCtrl.addAnswer(id: 319, answer: "");
    }
    //????????????????????????????????????????????????????????????????????
    //!--------------------------
    //*dropdown
    if (timesBuyingNewanimalCtrl.timesNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 36, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 37, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 38, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewId.value == 4) {
      sendDataCtrl.addAnswer(id: 39, answer: "");
    }
    if (timesBuyingNewanimalCtrl.timesNewText.value ==
        'What are the times to buy animals?') {
      sendDataCtrl.addAnswer(id: 320, answer: "");
    }
    //!--------------------------
    //*dropdown
    if (sourceNewId.sourceNewId.value == 1) {
      sendDataCtrl.addAnswer(id: 40, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 2) {
      sendDataCtrl.addAnswer(id: 41, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 3) {
      sendDataCtrl.addAnswer(id: 42, answer: "");
    }
    if (sourceNewId.sourceNewId.value == 4) {
      sendDataCtrl.addAnswer(id: 43, answer: "");
    }
    if (sourceNewId.sourceNewText.value ==
        'What are the sources of animal purchase?') {
      sendDataCtrl.addAnswer(id: 321, answer: "");
    }
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 44,
        answer: dateCtrl.date.year == 2016 &&
                dateCtrl.date.month == 10 &&
                dateCtrl.date.day == 26
            ? ""
            : "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");
    //!--------------------------
  }

  void sendData(context) async {
    
    
      var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
          data: sendDataCtrl.answers);
      if (res == 200) {
        FarmHorseStatusPref.setHorseStatusValue(1);
    
        Get.offAll(() => HorseHousingScreen());
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
 
  }
}
