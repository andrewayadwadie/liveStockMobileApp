 
import '../../controller/sheep_clinical_textfield_controller.dart';
import '../../controller/sheep_inflammation_site_radio_controller.dart';
import '../../controller/sheep_sores_radio_controller.dart';
import '../../controller/sheep_udder_gangrene_radio_controller.dart';
import '../../controller/sheep_wounds_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import 'sheep_clinical_examination_radio_widget.dart';
import 'sheep_inflammation_stie_radio_widget.dart';
import 'sheep_symptoms_types_textfield_widget.dart';
 


// ignore: must_be_immutable
class SheepMastitisFormWidget extends StatelessWidget {
  SheepMastitisFormWidget({Key? key}) : super(key: key);
SheepClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(SheepClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        const LabelWidget(label: "Number of Cases ? "),
        SheepSymptomsTextFieldWidget(
            title: "Number of Cases :",
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemastitis(val??"");
            }),
        //! The site of inflammation
        const LabelWidget(label: "The site of inflammation ? "),
        GetBuilder<SheepInflammationSiteRadioController>(
            init: SheepInflammationSiteRadioController(),
            builder: (inflammationSiteCtrl) {
              return SheepInflammationSiteRadioWidget(

                  enumName: SheepInflammationSiteRadio,
                  yesValue: SheepInflammationSiteRadio.udder,
                  onChangedYes: (val) => inflammationSiteCtrl
                      .onChange(val ?? SheepInflammationSiteRadio.udder),
                  noValue: SheepInflammationSiteRadio.nipples,
                  onChangedNo: (val) => inflammationSiteCtrl
                      .onChange(val ?? SheepInflammationSiteRadio.nipples),
                  groupValue: inflammationSiteCtrl.charcter,
                  noAnswerValue: SheepInflammationSiteRadio.noAnswer,
                  onChangedNoAnswer: (val) => inflammationSiteCtrl
                      .onChange(val ?? SheepInflammationSiteRadio.noAnswer) 
                  );
            }),

        //!Is there gangrene in the udder?
        const LabelWidget(label: "Is there gangrene in the udder? "),
        GetBuilder<SheepUdderGangreneController>(
            init: SheepUdderGangreneController(),
            builder: (udderGangreneCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepUdderGangrene,
                      yesValue: SheepUdderGangrene.yes,
                      onChangedYes: (val) => udderGangreneCtrl
                          .onChange(val ?? SheepUdderGangrene.yes),
                      noValue: SheepUdderGangrene.no,
                      onChangedNo: (val) => udderGangreneCtrl
                          .onChange(val ?? SheepUdderGangrene.no),
                      groupValue: udderGangreneCtrl.charcter,
                      
                      noAnswerValue: SheepUdderGangrene.noAnswer,
                      
                      onChangedNoAnswer: (val) => udderGangreneCtrl
                          .onChange(val ?? SheepUdderGangrene.noAnswer)),
                  if (udderGangreneCtrl.charcter == SheepUdderGangrene.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Number of cases"),
                        SheepSymptomsTextFieldWidget(
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
        GetBuilder<SheepSoresRadioControllerController>(
            init: SheepSoresRadioControllerController(),
            builder: (soresCtrl) {
              return SheepClinicalExaminationRadioWidget(
                  enumName: SheepSoresRadioController,
                  yesValue: SheepSoresRadioController.yes,
                  onChangedYes: (val) =>
                      soresCtrl.onChange(val ?? SheepSoresRadioController.yes),
                  noValue: SheepSoresRadioController.no,
                  onChangedNo: (val) =>
                      soresCtrl.onChange(val ?? SheepSoresRadioController.no),
                  groupValue: soresCtrl.charcter,
                  noAnswerValue: SheepSoresRadioController.noAnswer,
                  onChangedNoAnswer: (val) => soresCtrl
                      .onChange(val ?? SheepSoresRadioController.noAnswer));
            }),

        //!Are there wounds?
        const LabelWidget(label: "Are there wounds? "),
        GetBuilder<SheepWoundsRadioControllerController>(
            init: SheepWoundsRadioControllerController(),
            builder: (woundsCtrl) {
              return SheepClinicalExaminationRadioWidget(
                  enumName: SheepWoundsRadioController,
                  yesValue: SheepWoundsRadioController.yes,
                  onChangedYes: (val) => woundsCtrl
                      .onChange(val ?? SheepWoundsRadioController.yes),
                  noValue: SheepWoundsRadioController.no,
                  onChangedNo: (val) =>
                      woundsCtrl.onChange(val ?? SheepWoundsRadioController.no),
                  groupValue: woundsCtrl.charcter,
                  noAnswerValue: SheepWoundsRadioController.noAnswer,
                  onChangedNoAnswer: (val) => woundsCtrl
                      .onChange(val ?? SheepWoundsRadioController.noAnswer)
                  
                  
                  );
            }),
      ],
    );
  }
}
