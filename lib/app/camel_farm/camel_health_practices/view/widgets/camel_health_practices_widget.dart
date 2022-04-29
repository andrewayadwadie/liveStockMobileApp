import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_clean_vechicles_radio_controller.dart';
import '../../controller/camel_clean_visitor_radio_controller.dart';
import '../../controller/camel_good_sanitation_radio_controller.dart';
import '../../controller/camel_treated_radio_controller.dart';
import '../../controller/camel_visitor_cloths_radio_controller.dart';
import '../../controller/camel_water_source_radio_controller.dart';
import '../../controller/camel_workers_cloths_radio_controller.dart';
import 'camel_behavior_radio_widget.dart';
import 'camel_behavior_textfield_widget.dart';
import 'camel_water_source_widget.dart';

class CamelHealthPracticesWidget extends StatelessWidget {
  const CamelHealthPracticesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
      init:SendCamelHerdDataController(),
      builder: (sendDataCtrl) {
        return ListView(
          children: [
            const LabelWidget(
                label:
                    "Are there places designated for disinfecting the vehicles at the entrance to the farm?"),
            GetBuilder<CamelCleanVehiclesRadioController>(
                init: CamelCleanVehiclesRadioController(),
                builder: (cleanVehiclesCtrl) {
                  return CamelBehaviorRadioWidget(
                      enumName: CamelCleanVehiclesRadio,
                      yesValue: CamelCleanVehiclesRadio.yes,
                      onChangedYes: (val) => cleanVehiclesCtrl
                          .onChange(val ?? CamelCleanVehiclesRadio.yes),
                      noValue: CamelCleanVehiclesRadio.no,
                      onChangedNo: (val) => cleanVehiclesCtrl
                          .onChange(val ?? CamelCleanVehiclesRadio.no),
                      groupValue: cleanVehiclesCtrl.charcter);
                }),
            const LineWidget(),
            const LabelWidget(
                label: "Are there places designated to cleanse visitors?"),
            GetBuilder<CamelCleanVisitorRadioController>(
                init: CamelCleanVisitorRadioController(),
                builder: (cleanVisitorCtrl) {
                  return CamelBehaviorRadioWidget(
                      enumName: CamelCleanVisitorRadio,
                      yesValue: CamelCleanVisitorRadio.yes,
                      onChangedYes: (val) => cleanVisitorCtrl
                          .onChange(val ?? CamelCleanVisitorRadio.yes),
                      noValue: CamelCleanVisitorRadio.no,
                      onChangedNo: (val) => cleanVisitorCtrl
                          .onChange(val ?? CamelCleanVisitorRadio.no),
                      groupValue: cleanVisitorCtrl.charcter);
                }),
            const LineWidget(),
            const LabelWidget(
                label: "Do visitors use protective clothing when visiting?"),
            GetBuilder<CamelVisitorClothsRadioController>(
                init: CamelVisitorClothsRadioController(),
                builder: (visitorClothsCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CamelBehaviorRadioWidget(
                          enumName: CamelVisitorClothsRadio,
                          yesValue: CamelVisitorClothsRadio.yes,
                          onChangedYes: (val) => visitorClothsCtrl
                              .onChange(val ?? CamelVisitorClothsRadio.yes),
                          noValue: CamelVisitorClothsRadio.no,
                          onChangedNo: (val) => visitorClothsCtrl
                              .onChange(val ?? CamelVisitorClothsRadio.no),
                          groupValue: visitorClothsCtrl.charcter),
                      if (visitorClothsCtrl.charcter == CamelVisitorClothsRadio.yes)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LabelWidget(label: "clothes type?"),
                            CamelBehaviorTextFieldWidget(
                                title: "clothes type", onNoteChange: (val) {
                                  sendDataCtrl.addAnswer(id: 137, answer: val??"");
                                }),
                          ],
                        ),
                    ],
                  );
                }),
            //!------------------------------------------------
            const LineWidget(),
            const LabelWidget(label: "Do farm workers use protective clothing?"),
            GetBuilder<CamelWorkersClothsRadioController>(
                init: CamelWorkersClothsRadioController(),
                builder: (workersClothsCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CamelBehaviorRadioWidget(
                          enumName: CamelWorkersClothsRadio,
                          yesValue: CamelWorkersClothsRadio.yes,
                          onChangedYes: (val) => workersClothsCtrl
                              .onChange(val ?? CamelWorkersClothsRadio.yes),
                          noValue: CamelWorkersClothsRadio.no,
                          onChangedNo: (val) => workersClothsCtrl
                              .onChange(val ?? CamelWorkersClothsRadio.no),
                          groupValue: workersClothsCtrl.charcter),
                      if (workersClothsCtrl.charcter == CamelWorkersClothsRadio.yes)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LabelWidget(label: "clothes type?"),
                            CamelBehaviorTextFieldWidget(
                                title: "clothes type", onNoteChange: (val) {
                                   sendDataCtrl.addAnswer(id: 140, answer: val??"");
                                }),
                          ],
                        ),
                    ],
                  );
                }),
            const LineWidget(),
            const LabelWidget(label: "What is the source of drinking water?"),
            GetBuilder<CamelWaterSourceRadioController>(
                init: CamelWaterSourceRadioController(),
                builder: (waterSourceCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CamelWaterSourceRadioWidget(
                          enumName: CamelWaterSourceRadio,
                          yesValue: CamelWaterSourceRadio.treated,
                          onChangedYes: (val) => waterSourceCtrl
                              .onChange(val ?? CamelWaterSourceRadio.treated),
                          noValue: CamelWaterSourceRadio.untreated,
                          onChangedNo: (val) => waterSourceCtrl
                              .onChange(val ?? CamelWaterSourceRadio.untreated),
                          groupValue: waterSourceCtrl.charcter),
                      if (waterSourceCtrl.charcter ==
                          CamelWaterSourceRadio.untreated)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LabelWidget(
                                label:
                                    "Is the periodic examination carried out in the competent laboratories?"),
                            GetBuilder<CamelTreatedRadioController>(
                                init: CamelTreatedRadioController(),
                                builder: (treatedCtrl) {
                                  return CamelBehaviorRadioWidget(
                                      enumName: CamelTreatedRadio,
                                      yesValue: CamelTreatedRadio.yes,
                                      onChangedYes: (val) => treatedCtrl
                                          .onChange(val ?? CamelTreatedRadio.yes),
                                      noValue: CamelTreatedRadio.no,
                                      onChangedNo: (val) => treatedCtrl
                                          .onChange(val ?? CamelTreatedRadio.no),
                                      groupValue: treatedCtrl.charcter);
                                }),
                          ],
                        ),
                    ],
                  );
                }),
            const LineWidget(),

            //!88888888888888888888888888888888888888888888888888888888888888888888888
            const LabelWidget(
                label:
                    "What is the distance between this farm and the nearest farm?"),
            CamelBehaviorTextFieldWidget(title: "distance", onNoteChange: (val) {
              sendDataCtrl.addAnswer(id: 143, answer: val??"");
     
            }),
            const LineWidget(),
            //!88888888888888888888888888888888888888888888888888888888888888888888888
            const LabelWidget(
                label:
                    "What is the distance between this farm and bodies of water?"),
            CamelBehaviorTextFieldWidget(title: "distance", onNoteChange: (val) {
              sendDataCtrl.addAnswer(id: 144, answer: val??"");
            }),
            const LineWidget(),

            //!88888888888888888888888888888888888888888888888888888888888888888888888
            const LabelWidget(
                label:
                    "What is the distance between this farm and trees and grass?"),
            CamelBehaviorTextFieldWidget(title: "distance", onNoteChange: (val) {
              sendDataCtrl.addAnswer(id: 145, answer: val??"");
            }),
            const LineWidget(),
            //!88888888888888888888888888888888888888888888888888888888888888888888888
            const LabelWidget(
                label:
                    "What is the distance between this farm and the main roads?"),
            CamelBehaviorTextFieldWidget(title: "distance", onNoteChange: (val) {
              sendDataCtrl.addAnswer(id: 146, answer: val??"");
            }),
            const LineWidget(),
            //!88888888888888888888888888888888888888888888888888888888888888888888888
            const LabelWidget(
                label:
                    "What is the distance between this farm and the residential cities?"),
            CamelBehaviorTextFieldWidget(title: "distance", onNoteChange: (val) {
              sendDataCtrl.addAnswer(id: 147, answer: val??"");
            }),
            const LineWidget(),
            const LabelWidget(label: "Is there good sanitation on the farm?"),
            GetBuilder<CamelGoodSanitationRadioController>(
                init: CamelGoodSanitationRadioController(),
                builder: (goodSanitationCtrl) {
                  return CamelBehaviorRadioWidget(
                      enumName: CamelGoodSanitationRadio,
                      yesValue: CamelGoodSanitationRadio.yes,
                      onChangedYes: (val) => goodSanitationCtrl
                          .onChange(val ?? CamelGoodSanitationRadio.yes),
                      noValue: CamelGoodSanitationRadio.no,
                      onChangedNo: (val) => goodSanitationCtrl
                          .onChange(val ?? CamelGoodSanitationRadio.no),
                      groupValue: goodSanitationCtrl.charcter);
                }),
          ],
        );
      }
    );
  }
}
