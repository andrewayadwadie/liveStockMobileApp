import 'package:flutter/material.dart';
 import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import '../../sheep_lab_info/view/screen/sheep_lab_info_screen.dart';
import 'sheep_animals_show_symptoms_radio_controller.dart';
import 'sheep_clinical_changes_checkbox_controller.dart';
import 'sheep_clinical_textfield_controller.dart';
import 'sheep_diagnoses_disease_controller.dart';
import 'sheep_disease_among_workers_radio_widget.dart';
import 'sheep_disease_outbreak_radio_controller.dart';
import 'sheep_health_issues_checkbox_controller.dart';
import 'sheep_inflammation_site_radio_controller.dart';
import 'sheep_miscarriage_time_controller.dart';
import 'sheep_sick_animals_treated_controller.dart';
import 'sheep_sick_case_radio_controller.dart';
import 'sheep_sores_radio_controller.dart';
import 'sheep_symptoms_before_abortion_radio_controller.dart';
import 'sheep_udder_gangrene_radio_controller.dart';
import 'sheep_wounds_radio_controller.dart';

class SheepclinicalExaminationSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());

  SheephealthIssuesCheckboxController healthIssuesCheckboxCtrl =
      Get.put(SheephealthIssuesCheckboxController(choices: [
    " Gastrointestinal diseases",
    "respiratory system diseases",
    "nervous system diseases",
    "diseases of the circulatory system",
    "skin desies",
    "venereal disease",
    "Muscle and joint diseases",
    "malnutrition diseases",
    "Global Warming",
    "Wounds and fractures",
  ]));
  SheepSickCaseRadioController sickCaseRadioClr =
      Get.put(SheepSickCaseRadioController());

  SheepAnimalsShowSymptomsRadioController showSymptomsCtrl =
      Get.put(SheepAnimalsShowSymptomsRadioController());
  SheepDiseaseAmongWorkersRadioController diseaseAmongWorkers =
      Get.put(SheepDiseaseAmongWorkersRadioController());
  SheepDiagnosesDiseaseController diagnosesDiseaseCtrl =
      Get.put(SheepDiagnosesDiseaseController());
  SheepSickAnimalsTreatedController sickAnimalsTreatedCtrl =
      Get.put(SheepSickAnimalsTreatedController());
  SheepDiseaseOutbreakRadioController diseaseOutbreakCtrl =
      Get.put(SheepDiseaseOutbreakRadioController());
//!===========================*=======================*=======================================
  SheepInflammationSiteRadioController inflammationSiteRadioCtrl =
      Get.put(SheepInflammationSiteRadioController());
  SheepUdderGangreneController udderGangreneCtrl =
      Get.put(SheepUdderGangreneController());
  SheepSoresRadioControllerController soresCtrl =
      Get.put(SheepSoresRadioControllerController());
  SheepWoundsRadioControllerController woundsCtrl =
      Get.put(SheepWoundsRadioControllerController());
//!===========================*=======================*=======================================

  SheepSymptomsBeforeAbortionRadioController symmptomsBeforeAbortionCtrl =
      Get.put(SheepSymptomsBeforeAbortionRadioController());

  SheepMiscarriageTimeController miscarriageTimeCtrl =
      Get.put(SheepMiscarriageTimeController());

  SheepClinicalChangesCheckboxController clinicalChangesCheckboxCtrl =
      Get.put(SheepClinicalChangesCheckboxController(choices: [
    "Clinical changes in vaginal secretions after childbirth.",
    "in the placenta.",
    "in fetuses."
  ]));

  SheepClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(SheepClinicalTextFieldController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 231, answer: clinicalTextFieldCtrl.fever);

    sendDataCtrl.addAnswer(id: 232, answer: clinicalTextFieldCtrl.limp);

    sendDataCtrl.addAnswer(id: 233, answer: clinicalTextFieldCtrl.cough);

    sendDataCtrl.addAnswer(id: 234, answer: clinicalTextFieldCtrl.breathing);

    sendDataCtrl.addAnswer(id: 235, answer: clinicalTextFieldCtrl.diarrhea);

    sendDataCtrl.addAnswer(id: 236, answer: clinicalTextFieldCtrl.nasal);

    sendDataCtrl.addAnswer(id: 237, answer: clinicalTextFieldCtrl.vaginal);

    sendDataCtrl.addAnswer(id: 238, answer: clinicalTextFieldCtrl.secretions);

    sendDataCtrl.addAnswer(id: 239, answer: clinicalTextFieldCtrl.drooling);

    sendDataCtrl.addAnswer(id: 240, answer: clinicalTextFieldCtrl.inflammation);

    sendDataCtrl.addAnswer(id: 241, answer: clinicalTextFieldCtrl.anorexia);

    sendDataCtrl.addAnswer(id: 242, answer: clinicalTextFieldCtrl.nervous);

    sendDataCtrl.addAnswer(id: 243, answer: clinicalTextFieldCtrl.skinlesions);

    sendDataCtrl.addAnswer(id: 244, answer: clinicalTextFieldCtrl.wightLoss);

    sendDataCtrl.addAnswer(
        id: 245, answer: clinicalTextFieldCtrl.decreasedMilk);

    sendDataCtrl.addAnswer(id: 246, answer: clinicalTextFieldCtrl.lethargy);

    sendDataCtrl.addAnswer(id: 247, answer: clinicalTextFieldCtrl.mastitis);

    sendDataCtrl.addAnswer(id: 252, answer: clinicalTextFieldCtrl.gargrne);

    sendDataCtrl.addAnswer(id: 257, answer: clinicalTextFieldCtrl.miscarriage);

    sendDataCtrl.addAnswer(
        id: 260, answer: clinicalTextFieldCtrl.symptomsAbortion);

    sendDataCtrl.addAnswer(
        id: 269, answer: clinicalTextFieldCtrl.animalSymptoms);

    sendDataCtrl.addAnswer(id: 272, answer: clinicalTextFieldCtrl.diseaseNo);

    sendDataCtrl.addAnswer(
        id: 273, answer: clinicalTextFieldCtrl.diseaseSymptoms);

    //!--------------------------
    //* Radio button
    if (sickCaseRadioClr.charcter == SheepSickCaseRadio.yes) {
      sendDataCtrl.addAnswer(id: 229, answer: "");
    } else if (sickCaseRadioClr.charcter == SheepSickCaseRadio.no) {
      sendDataCtrl.addAnswer(id: 230, answer: "");
    } else if (sickCaseRadioClr.charcter == SheepSickCaseRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 386, answer: "");
    }
    //!--------------------------
    //*check box
    if (healthIssuesCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 219, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 220, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 221, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 222, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 223, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 224, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 225, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[7] == true) {
      sendDataCtrl.addAnswer(id: 226, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[8] == true) {
      sendDataCtrl.addAnswer(id: 227, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[9] == true) {
      sendDataCtrl.addAnswer(id: 228, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 385, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (showSymptomsCtrl.charcter == SheepAnimalsShowSymptomsRadio.yes) {
      sendDataCtrl.addAnswer(id: 267, answer: "");
    } else if (showSymptomsCtrl.charcter == SheepAnimalsShowSymptomsRadio.no) {
      sendDataCtrl.addAnswer(id: 268, answer: "");
    } else if (showSymptomsCtrl.charcter ==
        SheepAnimalsShowSymptomsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 394, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (diseaseAmongWorkers.charcter == SheepDiseaseAmongWorkersRadio.yes) {
      sendDataCtrl.addAnswer(id: 270, answer: "");
    } else if (diseaseAmongWorkers.charcter ==
        SheepDiseaseAmongWorkersRadio.no) {
      sendDataCtrl.addAnswer(id: 271, answer: "");
    } else if (diseaseAmongWorkers.charcter ==
        SheepDiseaseAmongWorkersRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 395, answer: "");
    }

    //* dropdown
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 1) {
      sendDataCtrl.addAnswer(id: 274, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 2) {
      sendDataCtrl.addAnswer(id: 275, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 3) {
      sendDataCtrl.addAnswer(id: 276, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 4) {
      sendDataCtrl.addAnswer(id: 277, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseText.value ==
        'Who diagnoses disease states?') {
      sendDataCtrl.addAnswer(id: 396, answer: "");
    }

    //* dropdown
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 1) {
      sendDataCtrl.addAnswer(id: 278, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 2) {
      sendDataCtrl.addAnswer(id: 279, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 3) {
      sendDataCtrl.addAnswer(id: 280, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 4) {
      sendDataCtrl.addAnswer(id: 281, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedText.value ==
        'How are sick animals treated?') {
      sendDataCtrl.addAnswer(id: 397, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (diseaseOutbreakCtrl.charcter == SheepDiseaseOutbreakRadio.yes) {
      sendDataCtrl.addAnswer(id: 282, answer: "");
    } else if (diseaseOutbreakCtrl.charcter == SheepDiseaseOutbreakRadio.no) {
      sendDataCtrl.addAnswer(id: 283, answer: "");
    } else if (diseaseOutbreakCtrl.charcter ==
        SheepDiseaseOutbreakRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 398, answer: "");
    }
  }

  void fillMastitisAnswers() {
    //!--------------------------
    //* Radio button
    if (inflammationSiteRadioCtrl.charcter ==
        SheepInflammationSiteRadio.udder) {
      sendDataCtrl.addAnswer(id: 248, answer: "");
    } else if (inflammationSiteRadioCtrl.charcter ==
        SheepInflammationSiteRadio.nipples) {
      sendDataCtrl.addAnswer(id: 249, answer: "");
    } else if (inflammationSiteRadioCtrl.charcter ==
        SheepInflammationSiteRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 387, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (udderGangreneCtrl.charcter == SheepUdderGangrene.yes) {
      sendDataCtrl.addAnswer(id: 250, answer: "");
    } else if (udderGangreneCtrl.charcter == SheepUdderGangrene.no) {
      sendDataCtrl.addAnswer(id: 251, answer: "");
    } else if (udderGangreneCtrl.charcter == SheepUdderGangrene.noAnswer) {
      sendDataCtrl.addAnswer(id: 388, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (soresCtrl.charcter == SheepSoresRadioController.yes) {
      sendDataCtrl.addAnswer(id: 253, answer: "");
    } else if (soresCtrl.charcter == SheepSoresRadioController.no) {
      sendDataCtrl.addAnswer(id: 254, answer: "");
    } else if (soresCtrl.charcter == SheepSoresRadioController.noAnswer) {
      sendDataCtrl.addAnswer(id: 389, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (woundsCtrl.charcter == SheepWoundsRadioController.yes) {
      sendDataCtrl.addAnswer(id: 255, answer: "");
    } else if (woundsCtrl.charcter == SheepWoundsRadioController.no) {
      sendDataCtrl.addAnswer(id: 256, answer: "");
    } else if (woundsCtrl.charcter == SheepWoundsRadioController.noAnswer) {
      sendDataCtrl.addAnswer(id: 390, answer: "");
    }
  }

  void fillMiscarriageAnswers() {
    //!--------------------------
    //* Radio button
    if (symmptomsBeforeAbortionCtrl.charcter ==
        SheepSymptomsBeforeAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 258, answer: "");
    } else if (symmptomsBeforeAbortionCtrl.charcter ==
        SheepSymptomsBeforeAbortionRadio.no) {
      sendDataCtrl.addAnswer(id: 259, answer: "");
    } else if (symmptomsBeforeAbortionCtrl.charcter ==
        SheepSymptomsBeforeAbortionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 391, answer: "");
    }

    //* dropdown
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 1) {
      sendDataCtrl.addAnswer(id: 261, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 2) {
      sendDataCtrl.addAnswer(id: 262, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 3) {
      sendDataCtrl.addAnswer(id: 263, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeText.value == 'Miscarriage Time ') {
      sendDataCtrl.addAnswer(id: 392, answer: "");
    }
    //!--------------------------
    //*check box
    if (clinicalChangesCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 264, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 265, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 266, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 393, answer: "");
    }
  }

  void sendData(BuildContext context) async {
 

    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      FarmSheepStatusPref.setSheepStatusValue(9);

      Get.offAll(() => SheepLabInfoScreen());
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
