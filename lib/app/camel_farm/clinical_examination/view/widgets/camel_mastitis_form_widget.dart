import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_clinical_textfield_controller.dart';
import '../../controller/camel_inflammation_site_radio_controller.dart';
import '../../controller/camel_sores_radio_controller.dart';
import '../../controller/camel_udder_gangrene_radio_controller.dart';
import '../../controller/camel_wounds_radio_controller.dart';
import 'camel_clinical_examination_radio_widget.dart';
import 'camel_inflammation_stie_radio_widget.dart';
import 'camel_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class CamelMastitisFormWidget extends StatelessWidget {
  CamelMastitisFormWidget({Key? key}) : super(key: key);
CamelClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CamelClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        const LabelWidget(label: "Number of Cases ? "),
        CamelSymptomsTextFieldWidget(
            title: "Number of Cases :",
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemastitis(val??"");
            }),
        //! The site of inflammation
        const LabelWidget(label: "The site of inflammation ? "),
        GetBuilder<CamelInflammationSiteRadioController>(
            init: CamelInflammationSiteRadioController(),
            builder: (inflammationSiteCtrl) {
              return CamelInflammationSiteRadioWidget(

                  enumName: CamelInflammationSiteRadio,
                  yesValue: CamelInflammationSiteRadio.udder,
                  onChangedYes: (val) => inflammationSiteCtrl
                      .onChange(val ?? CamelInflammationSiteRadio.udder),
                  noValue: CamelInflammationSiteRadio.nipples,
                  onChangedNo: (val) => inflammationSiteCtrl
                      .onChange(val ?? CamelInflammationSiteRadio.nipples),
                  groupValue: inflammationSiteCtrl.charcter,
                  noAnswerValue: CamelInflammationSiteRadio.noAnswer,
                  onChangedNoAnswer: (val) => inflammationSiteCtrl
                      .onChange(val ?? CamelInflammationSiteRadio.noAnswer) 
                  );
            }),

        //!Is there gangrene in the udder?
        const LabelWidget(label: "Is there gangrene in the udder? "),
        GetBuilder<CamelUdderGangreneController>(
            init: CamelUdderGangreneController(),
            builder: (udderGangreneCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelUdderGangrene,
                      yesValue: CamelUdderGangrene.yes,
                      onChangedYes: (val) => udderGangreneCtrl
                          .onChange(val ?? CamelUdderGangrene.yes),
                      noValue: CamelUdderGangrene.no,
                      onChangedNo: (val) => udderGangreneCtrl
                          .onChange(val ?? CamelUdderGangrene.no),
                      groupValue: udderGangreneCtrl.charcter,
                      
                      noAnswerValue: CamelUdderGangrene.noAnswer,
                      
                      onChangedNoAnswer: (val) => udderGangreneCtrl
                          .onChange(val ?? CamelUdderGangrene.noAnswer)),
                  if (udderGangreneCtrl.charcter == CamelUdderGangrene.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "Number of cases"),
                        CamelSymptomsTextFieldWidget(
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
        GetBuilder<CamelSoresRadioControllerController>(
            init: CamelSoresRadioControllerController(),
            builder: (soresCtrl) {
              return CamelClinicalExaminationRadioWidget(
                  enumName: CamelSoresRadioController,
                  yesValue: CamelSoresRadioController.yes,
                  onChangedYes: (val) =>
                      soresCtrl.onChange(val ?? CamelSoresRadioController.yes),
                  noValue: CamelSoresRadioController.no,
                  onChangedNo: (val) =>
                      soresCtrl.onChange(val ?? CamelSoresRadioController.no),
                  groupValue: soresCtrl.charcter,
                  noAnswerValue: CamelSoresRadioController.noAnswer,
                  onChangedNoAnswer: (val) => soresCtrl
                      .onChange(val ?? CamelSoresRadioController.noAnswer));
            }),

        //!Are there wounds?
        const LabelWidget(label: "Are there wounds? "),
        GetBuilder<CamelWoundsRadioControllerController>(
            init: CamelWoundsRadioControllerController(),
            builder: (woundsCtrl) {
              return CamelClinicalExaminationRadioWidget(
                  enumName: CamelWoundsRadioController,
                  yesValue: CamelWoundsRadioController.yes,
                  onChangedYes: (val) => woundsCtrl
                      .onChange(val ?? CamelWoundsRadioController.yes),
                  noValue: CamelWoundsRadioController.no,
                  onChangedNo: (val) =>
                      woundsCtrl.onChange(val ?? CamelWoundsRadioController.no),
                  groupValue: woundsCtrl.charcter,
                  noAnswerValue: CamelWoundsRadioController.noAnswer,
                  onChangedNoAnswer: (val) => woundsCtrl
                      .onChange(val ?? CamelWoundsRadioController.noAnswer)
                  
                  
                  );
            }),
      ],
    );
  }
}
