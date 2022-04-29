
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_clinical_changes_checkbox_controller.dart';
import '../../controller/camel_clinical_changes_radio_controller.dart';
import '../../controller/camel_symptoms_before_abortion_radio_controller.dart';
import 'camel_clinical_examination_radio_widget.dart';
import 'camel_misccariage_time_widget.dart';
import 'camel_symptoms_types_textfield_widget.dart';

class CamelMiscarriageFormWidget extends StatelessWidget {
  const CamelMiscarriageFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        const LabelWidget(label: "Number of Cases ? "),
        CamelSymptomsTextFieldWidget(
            title: "Number of Cases :", onNoteChange: (val) {}),
        //!Are there symptoms before the abortion?
        const LabelWidget(label: "Are there symptoms before the abortion? "),

        GetBuilder<CamelSymptomsBeforeAbortionRadioController>(
            init: CamelSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelSymptomsBeforeAbortionRadio,
                      yesValue: CamelSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? CamelSymptomsBeforeAbortionRadio.yes),
                      noValue: CamelSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? CamelSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      CamelSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Detect Symptoms . "),
                        CamelSymptomsTextFieldWidget(
                            title: "Symptoms :", onNoteChange: (val) {})
                      ],
                    )
                ],
              );
            }),
        //!What is the timing of the abortion?
        const LabelWidget(label: "What is the timing of the abortion? "),
        const CamelMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
        const LabelWidget(label: "Are there clinical changes after abortion? "),
        GetBuilder<CamelClinicalChangesRadioController>(
            init: CamelClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelClinicalChangesRadio,
                      yesValue: CamelClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CamelClinicalChangesRadio.yes),
                      noValue: CamelClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CamelClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter),
                  if (clinicalChangesRadioCtrl.charcter ==
                      CamelClinicalChangesRadio.yes)
                    GetBuilder<CamelClinicalChangesCheckboxController>(
                        init: CamelClinicalChangesCheckboxController(choices: [
                          "Clinical changes in vaginal secretions after childbirth.",
                          "in the placenta.",
                          "in fetuses."
                        ]),
                        builder: (clinicalChangesCheckboxCtrl) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: List.generate(
                                    clinicalChangesCheckboxCtrl
                                        .choicesBoolList.length, (index) {
                                  return ListTile(
                                    title: Text(clinicalChangesCheckboxCtrl
                                        .choices[index]),
                                    leading: Checkbox(
                                      value: clinicalChangesCheckboxCtrl
                                          .choicesBoolList[index],
                                      onChanged: (val) =>
                                          clinicalChangesCheckboxCtrl.onChange(
                                              val, index),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          );
                        })
                ],
              );
            }),
      ],
    );
  }
}
