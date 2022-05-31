 
import '../../controller/cow_clinical_textfield_controller.dart';
import '../../controller/cow_inflammation_site_radio_controller.dart';
import '../../controller/cow_sores_radio_controller.dart';
import '../../controller/cow_udder_gangrene_radio_controller.dart';
import '../../controller/cow_wounds_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import 'cow_clinical_examination_radio_widget.dart';
import 'cow_inflammation_stie_radio_widget.dart';
import 'cow_symptoms_types_textfield_widget.dart';
 


// ignore: must_be_immutable
class CowMastitisFormWidget extends StatelessWidget {
  CowMastitisFormWidget({Key? key}) : super(key: key);
CowClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CowClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        const LabelWidget(label: "Number of Cases ? "),
        CowSymptomsTextFieldWidget(
            title: "Number of Cases :",
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemastitis(val??"");
            }),
        //! The site of inflammation
        const LabelWidget(label: "The site of inflammation ? "),
        GetBuilder<CowInflammationSiteRadioController>(
            init: CowInflammationSiteRadioController(),
            builder: (inflammationSiteCtrl) {
              return CowInflammationSiteRadioWidget(

                  enumName: CowInflammationSiteRadio,
                  yesValue: CowInflammationSiteRadio.udder,
                  onChangedYes: (val) => inflammationSiteCtrl
                      .onChange(val ?? CowInflammationSiteRadio.udder),
                  noValue: CowInflammationSiteRadio.nipples,
                  onChangedNo: (val) => inflammationSiteCtrl
                      .onChange(val ?? CowInflammationSiteRadio.nipples),
                  groupValue: inflammationSiteCtrl.charcter,
                  noAnswerValue: CowInflammationSiteRadio.noAnswer,
                  onChangedNoAnswer: (val) => inflammationSiteCtrl
                      .onChange(val ?? CowInflammationSiteRadio.noAnswer) 
                  );
            }),

        //!Is there gangrene in the udder?
        const LabelWidget(label: "Is there gangrene in the udder? "),
        GetBuilder<CowUdderGangreneController>(
            init: CowUdderGangreneController(),
            builder: (udderGangreneCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowUdderGangrene,
                      yesValue: CowUdderGangrene.yes,
                      onChangedYes: (val) => udderGangreneCtrl
                          .onChange(val ?? CowUdderGangrene.yes),
                      noValue: CowUdderGangrene.no,
                      onChangedNo: (val) => udderGangreneCtrl
                          .onChange(val ?? CowUdderGangrene.no),
                      groupValue: udderGangreneCtrl.charcter,
                      
                      noAnswerValue: CowUdderGangrene.noAnswer,
                      
                      onChangedNoAnswer: (val) => udderGangreneCtrl
                          .onChange(val ?? CowUdderGangrene.noAnswer)),
                  if (udderGangreneCtrl.charcter == CowUdderGangrene.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Number of cases"),
                        CowSymptomsTextFieldWidget(
                            title: "numer of cases",
                            onNoteChange: (val) {
                             clinicalTextFieldCtrl.onChangegargrne(val??"");
                            })
                      ],
                    )
                ],
              );
            }),

        //!Are there sores or blisters?
        const LabelWidget(label: "Are there sores or blisters? "),
        GetBuilder<CowSoresRadioControllerController>(
            init: CowSoresRadioControllerController(),
            builder: (soresCtrl) {
              return CowClinicalExaminationRadioWidget(
                  enumName: CowSoresRadioController,
                  yesValue: CowSoresRadioController.yes,
                  onChangedYes: (val) =>
                      soresCtrl.onChange(val ?? CowSoresRadioController.yes),
                  noValue: CowSoresRadioController.no,
                  onChangedNo: (val) =>
                      soresCtrl.onChange(val ?? CowSoresRadioController.no),
                  groupValue: soresCtrl.charcter,
                  noAnswerValue: CowSoresRadioController.noAnswer,
                  onChangedNoAnswer: (val) => soresCtrl
                      .onChange(val ?? CowSoresRadioController.noAnswer));
            }),

        //!Are there wounds?
        const LabelWidget(label: "Are there wounds? "),
        GetBuilder<CowWoundsRadioControllerController>(
            init: CowWoundsRadioControllerController(),
            builder: (woundsCtrl) {
              return CowClinicalExaminationRadioWidget(
                  enumName: CowWoundsRadioController,
                  yesValue: CowWoundsRadioController.yes,
                  onChangedYes: (val) => woundsCtrl
                      .onChange(val ?? CowWoundsRadioController.yes),
                  noValue: CowWoundsRadioController.no,
                  onChangedNo: (val) =>
                      woundsCtrl.onChange(val ?? CowWoundsRadioController.no),
                  groupValue: woundsCtrl.charcter,
                  noAnswerValue: CowWoundsRadioController.noAnswer,
                  onChangedNoAnswer: (val) => woundsCtrl
                      .onChange(val ?? CowWoundsRadioController.noAnswer)
                  
                  
                  );
            }),
      ],
    );
  }
}
