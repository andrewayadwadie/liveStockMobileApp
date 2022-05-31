import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/animals_show_symptoms_radio_controller.dart';
import '../../controller/camel_clinical_textfield_controller.dart';
import '../../controller/camel_disease_among_workers_radio_widget.dart';
import '../../controller/camel_disease_outbreak_radio_controller.dart';
import '../../controller/camel_health_issues_checkbox_controller.dart';
import '../../controller/camel_sick_case_radio_controller.dart';
import 'camel_clinical_examination_radio_widget.dart';
import 'camel_diagnoses_disease_widget.dart';
import 'camel_sick_animals_treated_widget.dart';
import 'camel_symptoms_checkbox_manual_widget.dart';
import 'camel_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class CamelclinicalExaminationWidget extends StatelessWidget {
  CamelclinicalExaminationWidget({Key? key}) : super(key: key);
 
  CamelClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CamelClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const LabelWidget(
            label: "What health problems have you noticed in the last year?"),
        GetBuilder<CamelhealthIssuesCheckboxController>(
            init: CamelhealthIssuesCheckboxController(choices: [
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
            ]),
            builder: (healthIssuesCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(
                        healthIssuesCtrl.choicesBoolList.length, (index) {
                      return ListTile(
                        title: Text(healthIssuesCtrl.choices[index]),
                        leading: Checkbox(
                          value: healthIssuesCtrl.choicesBoolList[index],
                          onChanged: (val) =>
                              healthIssuesCtrl.onChange(val, index),
                        ),
                      );
                    }),
                  ),
                ],
              );
            }),
        const LineWidget(),
        const LabelWidget(
            label:
                "Are there any cases of illness in the herd at the time of the visit?"),
        GetBuilder<CamelSickCaseRadioController>(
            init: CamelSickCaseRadioController(),
            builder: (sickCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelSickCaseRadio,
                      yesValue: CamelSickCaseRadio.yes,
                      onChangedYes: (val) =>
                          sickCtrl.onChange(val ?? CamelSickCaseRadio.yes),
                      noValue: CamelSickCaseRadio.no,
                      onChangedNo: (val) =>
                          sickCtrl.onChange(val ?? CamelSickCaseRadio.no),
                      groupValue: sickCtrl.charcter,
                      noAnswerValue: CamelSickCaseRadio.noAnswer,
                      onChangedNoAnswer: (val) => sickCtrl
                          .onChange(val ?? CamelSickCaseRadio.noAnswer)),
                ],
              );
            }),
        const LineWidget(),
        const LabelWidget(label: "What are the symptoms?"),
        //==================================================
        CamelSymptomsCheckboxManualWidget(),
        //==================================================
        const LineWidget(),
        const LabelWidget(
            label: "Did other animals show symptoms on the farm?"),
        GetBuilder<CamelAnimalsShowSymptomsRadioController>(
            init: CamelAnimalsShowSymptomsRadioController(),
            builder: (showSymptomsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelAnimalsShowSymptomsRadio,
                      yesValue: CamelAnimalsShowSymptomsRadio.yes,
                      onChangedYes: (val) => showSymptomsCtrl
                          .onChange(val ?? CamelAnimalsShowSymptomsRadio.yes),
                      noValue: CamelAnimalsShowSymptomsRadio.no,
                      onChangedNo: (val) => showSymptomsCtrl
                          .onChange(val ?? CamelAnimalsShowSymptomsRadio.no),
                      groupValue: showSymptomsCtrl.charcter,
                      noAnswerValue: CamelAnimalsShowSymptomsRadio.noAnswer,
                      onChangedNoAnswer: (val) => showSymptomsCtrl.onChange(
                          val ?? CamelAnimalsShowSymptomsRadio.noAnswer)),
                  if (showSymptomsCtrl.charcter ==
                      CamelAnimalsShowSymptomsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Number of cases"),
                        CamelSymptomsTextFieldWidget(
                            title: "numer of cases",
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl.onChangeanimalSymptoms(val??"");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        const LabelWidget(
            label:
                "Are there similar disease symptoms among farm workers or in contact with infected animals?"),
        GetBuilder<CamelDiseaseAmongWorkersRadioController>(
            init: CamelDiseaseAmongWorkersRadioController(),
            builder: (diseaseAmongWorkers) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelDiseaseAmongWorkersRadio,
                      yesValue: CamelDiseaseAmongWorkersRadio.yes,
                      onChangedYes: (val) => diseaseAmongWorkers
                          .onChange(val ?? CamelDiseaseAmongWorkersRadio.yes),
                      noValue: CamelDiseaseAmongWorkersRadio.no,
                      onChangedNo: (val) => diseaseAmongWorkers
                          .onChange(val ?? CamelDiseaseAmongWorkersRadio.no),
                      groupValue: diseaseAmongWorkers.charcter,
                      noAnswerValue: CamelDiseaseAmongWorkersRadio.noAnswer,
                      onChangedNoAnswer: (val) => diseaseAmongWorkers.onChange(
                          val ?? CamelDiseaseAmongWorkersRadio.noAnswer)),
                  if (diseaseAmongWorkers.charcter ==
                      CamelDiseaseAmongWorkersRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Number of cases"),
                        CamelSymptomsTextFieldWidget(
                            title: "numer of cases",
                            onNoteChange: (val) {
                            clinicalTextFieldCtrl.onChangediseaseNo(val??"");
                            }),
                        const LabelWidget(label: "symptoms"),
                        CamelSymptomsTextFieldWidget(
                            title: "symptoms",
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl.onChangediseaseSymptoms(val??"");
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        const LabelWidget(label: "Who diagnoses disease states?"),
        const CamelDiagnosesDiseaseWidget(),
        const LineWidget(),
        const LabelWidget(label: "How are sick animals treated?"),
        const CamelSickAnimalsTreatedWidget(),
        const LineWidget(),
        const LabelWidget(
            label:
                "In the event of a disease outbreak on the farm, is the veterinary administration informed?"),
        GetBuilder<CamelDiseaseOutbreakRadioController>(
            init: CamelDiseaseOutbreakRadioController(),
            builder: (diseaseOutbreakCtrl) {
              return CamelClinicalExaminationRadioWidget(
                  enumName: CamelDiseaseOutbreakRadio,
                  yesValue: CamelDiseaseOutbreakRadio.yes,
                  onChangedYes: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CamelDiseaseOutbreakRadio.yes),
                  noValue: CamelDiseaseOutbreakRadio.no,
                  onChangedNo: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CamelDiseaseOutbreakRadio.no),
                  groupValue: diseaseOutbreakCtrl.charcter,
                  noAnswerValue: CamelDiseaseOutbreakRadio.noAnswer,
                  onChangedNoAnswer: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CamelDiseaseOutbreakRadio.noAnswer));
            }),
      ],
    );
  }
}
