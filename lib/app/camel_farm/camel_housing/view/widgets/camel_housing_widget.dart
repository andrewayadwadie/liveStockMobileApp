import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../controller/animal_pens_radio_controller.dart';
import '../../controller/camel_barn_umberella_radio_controller.dart';
import '../../controller/camel_clean_floor_radio_controller.dart';
import '../../controller/camel_clean_watering_radio_controller.dart';
import '../../controller/camel_drinking_radio_controller.dart';
import '../../controller/camel_farm_fence_radio_controller.dart';
import '../../controller/camel_feeding_clean_radio_controller.dart';
import '../../controller/camel_feeding_status_radio_controller.dart';
import '../../controller/camel_fence_broken_or_not_radio_controller.dart';
import '../../controller/camel_housing_textfield_controller.dart';
import '../../controller/camel_location_feeding_controller.dart';
import '../../controller/camel_watering_location_radio_controlling.dart';
import 'camel_bran_exist_widget.dart';
import 'camel_clean_feeding_radio_widget.dart';
import 'camel_clean_floor_widget.dart';
import 'camel_clean_watering_widget.dart';
import 'camel_drinking_widget.dart';
import 'camel_feeding_location_widget.dart';
import 'camel_feeding_status_widget.dart';
import 'camel_fence_broken_radio_widget.dart';
import 'camel_housing_floor_type_widget.dart';
import 'camel_housing_radio_widget.dart';
import 'camel_housing_textfield_widget.dart';
import 'camel_watering_location_widget.dart';

// ignore: must_be_immutable
class CamelHousingWidget extends StatelessWidget {
    CamelHousingWidget({Key? key}) : super(key: key);
CamelHousingTextFieldController textCtrl = Get.put(CamelHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //? push in api object with id 46 if yes and 47 No
      const LabelWidget(label: "Are there any animal pens?"),
      GetBuilder<CamelPensRadioController>(
          init: CamelPensRadioController(),
          builder: (pensCtrl) { 
            return GetBuilder<SendCamelHerdDataController>(
                init: SendCamelHerdDataController(),
                builder: (sendDataCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CamelPensRadioWidget(
                        enumName: CamelPensRadio,
                        yesValue: CamelPensRadio.yes,
                        onChangedYes: (val) =>
                            pensCtrl.onChange(val ?? CamelPensRadio.yes),
                        noValue: CamelPensRadio.no,
                        onChangedNo: (val) =>
                            pensCtrl.onChange(val ?? CamelPensRadio.no),
                        groupValue: pensCtrl.charcter,
                        noAnswerValue: CamelPensRadio.noAnswer,
                        onChangedNoAnswer: (val) =>
                            pensCtrl.onChange(val ?? CamelPensRadio.noAnswer),
                      ),
                      if (pensCtrl.charcter == CamelPensRadio.yes)
                          CamelBranExistWidget(),
                      //? push in api object with id 51 and 52
                      const LabelWidget(
                          label: "Are there umbrellas for barns?"),
                      GetBuilder<CamelBarnUmberellaController>(
                          init: CamelBarnUmberellaController(),
                          builder: (barnCtrl) {
                            return CamelPensRadioWidget(
                                enumName: CamelBarnUmberella,
                                yesValue: CamelBarnUmberella.yes,
                                onChangedYes: (val) => barnCtrl
                                    .onChange(val ?? CamelBarnUmberella.yes),
                                noValue: CamelBarnUmberella.no,
                                onChangedNo: (val) => barnCtrl
                                    .onChange(val ?? CamelBarnUmberella.no),
                                groupValue: barnCtrl.charcter,
                                noAnswerValue: CamelBarnUmberella.noAnswer,
                                onChangedNoAnswer: (val) => barnCtrl.onChange(
                                    val ?? CamelBarnUmberella.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 53
                      const LabelWidget(
                          label: "Is there a fence for the farm ?"),
                      GetBuilder<CamelFenceController>(
                          init: CamelFenceController(),
                          builder: (fenceCtrl) {
                            return Column(
                              children: [
                                CamelPensRadioWidget(
                                    enumName: CamelFence,
                                    yesValue: CamelFence.yes,
                                    onChangedYes: (val) => fenceCtrl
                                        .onChange(val ?? CamelFence.yes),
                                    noValue: CamelFence.no,
                                    onChangedNo: (val) => fenceCtrl
                                        .onChange(val ?? CamelFence.no),
                                    groupValue: fenceCtrl.charcter,
                                    noAnswerValue: CamelFence.noAnswer,
                                    onChangedNoAnswer: (val) => fenceCtrl
                                        .onChange(val ?? CamelFence.noAnswer)),
                                if (fenceCtrl.charcter == CamelFence.yes)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const LabelWidget(
                                          label: "farm fence Status ?"),
                                      //? push in api object with id 53 if yes and 54 No
                                      GetBuilder<CamelBrokenFenceController>(
                                          init: CamelBrokenFenceController(),
                                          builder: (broken) {
                                            return CamelFenceBrokenRadioWidget(
                                              enumName: CamelBrokenFence,
                                              yesValue: CamelBrokenFence.broken,
                                              onChangedYes: (val) =>
                                                  broken.onChange(val ??
                                                      CamelBrokenFence.broken),
                                              noValue: CamelBrokenFence.good,
                                              onChangedNo: (val) =>
                                                  broken.onChange(val ??
                                                      CamelBrokenFence.good),
                                              groupValue: broken.charcter,
                                              noAnswerValue:
                                                  CamelBrokenFence.noAnswer,
                                              onChangedNoAnswer: (val) =>
                                                  broken.onChange(val ??
                                                      CamelBrokenFence
                                                          .noAnswer),
                                            );
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 55
                      const LabelWidget(label: "What is Floor type?"),
                      const CamelFloorTypeWidget(),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 60 if yes and 61 No
                      const LabelWidget(label: "floor condition ?"),
                      GetBuilder<CamelCleanFloorController>(
                          init: CamelCleanFloorController(),
                          builder: (cleanCtrl) {
                            return CamelCleanFloorWidget(
                                enumName: CamelCleanFloor,
                                yesValue: CamelCleanFloor.clean,
                                onChangedYes: (val) => cleanCtrl
                                    .onChange(val ?? CamelCleanFloor.clean),
                                noValue: CamelCleanFloor.unClean,
                                onChangedNo: (val) => cleanCtrl
                                    .onChange(val ?? CamelCleanFloor.unClean),
                                groupValue: cleanCtrl.charcter,
                                noAnswerValue: CamelCleanFloor.noAnswer,
                                onChangedNoAnswer: (val) => cleanCtrl
                                    .onChange(val ?? CamelCleanFloor.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 62
                      const LabelWidget(label: "How many waterings?"),
                      CamelHousingTextFieldWidget(
                          title: "number of waterings : ",
                          onNoteChange: (val) {
                           textCtrl.onChangeWateringNo(val??"");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 63 if underCanopy and 64 outdoors
                      const LabelWidget(
                          label:
                              "What is the location of the watering cans on the farm?"),
                      GetBuilder<CamelWateringLocationController>(
                          init: CamelWateringLocationController(),
                          builder: (wateringLocationCtrl) {
                            return CamelWateringLocationWidget(
                                enumName: CamelWateringLocation,
                                yesValue: CamelWateringLocation.underCanopy,
                                onChangedYes: (val) =>
                                    wateringLocationCtrl.onChange(val ??
                                        CamelWateringLocation.underCanopy),
                                noValue: CamelWateringLocation.outdoors,
                                onChangedNo: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? CamelWateringLocation.outdoors),
                                groupValue: wateringLocationCtrl.charcter,
                                noAnswerValue: CamelWateringLocation.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? CamelWateringLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 65 if clean and 66 unClean
                      const LabelWidget(
                          label:
                              "What is the state of the water in the watering cans?"),
                      GetBuilder<CamelCleanWateringController>(
                          init: CamelCleanWateringController(),
                          builder: (cleanWater) {
                            return CamelCleanWateringWidget(
                                enumName: CamelCleanWatering,
                                yesValue: CamelCleanWatering.clean,
                                onChangedYes: (val) => cleanWater
                                    .onChange(val ?? CamelCleanWatering.clean),
                                noValue: CamelCleanWatering.unClean,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? CamelCleanWatering.unClean),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: CamelCleanWatering.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? CamelCleanWatering.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 67 availableAllDay and 68 specificTimesaDay
                      const LabelWidget(label: "What is the drinking regimen?"),
                      GetBuilder<CamelDinkingRadioController>(
                          init: CamelDinkingRadioController(),
                          builder: (dinkingCtrl) {
                            return Column(
                              children: [
                                CamelDinkingRadioWidget(
                                    enumName: CamelDinkingRadio,
                                    yesValue: CamelDinkingRadio.availableAllDay,
                                    onChangedYes: (val) => dinkingCtrl.onChange(
                                        val ??
                                            CamelDinkingRadio.availableAllDay),
                                    noValue:
                                        CamelDinkingRadio.specificTimesaDay,
                                    onChangedNo: (val) => dinkingCtrl.onChange(
                                        val ??
                                            CamelDinkingRadio
                                                .specificTimesaDay),
                                    groupValue: dinkingCtrl.charcter,
                                    noAnswerValue: CamelDinkingRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        dinkingCtrl.onChange(
                                            val ?? CamelDinkingRadio.noAnswer)),
                                if (dinkingCtrl.charcter ==
                                    CamelDinkingRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 69
                                      const LabelWidget(
                                          label:
                                              "How many times to drink a day?"),
                                      CamelHousingTextFieldWidget(
                                          title:
                                              "number of times to drink a Day :",
                                          onNoteChange: (val) {
                                           textCtrl.onChangedrinkNo(val??"");
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 70
                      const LabelWidget(label: "What is the number of feeds?"),
                      CamelHousingTextFieldWidget(
                          title: "number of feeds :",
                          onNoteChange: (val) {
                            textCtrl.onChangefeedsNo(val??"");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 71 if yes and 72 No
                      const LabelWidget(
                          label:
                              "What is the location of the fodder on the farm? "),
                      GetBuilder<CamelFeedingLocationController>(
                          init: CamelFeedingLocationController(),
                          builder: (cleanWater) {
                            return CamelFeedingLocationWidget(
                                enumName: CamelFeedingLocation,
                                yesValue: CamelFeedingLocation.underCanopy,
                                onChangedYes: (val) => cleanWater.onChange(
                                    val ?? CamelFeedingLocation.underCanopy),
                                noValue: CamelFeedingLocation.outdoors,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? CamelFeedingLocation.outdoors),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: CamelFeedingLocation.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? CamelFeedingLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 73 if clean and 74 unClean
                      const LabelWidget(
                          label: "What is the status of the feed? "),
                      GetBuilder<CamelCleanFeedingController>(
                          init: CamelCleanFeedingController(),
                          builder: (cleanFeeding) {
                            return CamelCleanFeedingWidget(
                                enumName: CamelCleanFeeding,
                                yesValue: CamelCleanFeeding.clean,
                                onChangedYes: (val) => cleanFeeding
                                    .onChange(val ?? CamelCleanFeeding.clean),
                                noValue: CamelCleanFeeding.unClean,
                                onChangedNo: (val) => cleanFeeding
                                    .onChange(val ?? CamelCleanFeeding.unClean),
                                groupValue: cleanFeeding.charcter,
                                noAnswerValue: CamelCleanFeeding.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    cleanFeeding.onChange(
                                        val ?? CamelCleanFeeding.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 75 if availableAllDay and 76 specificTimesaDay
                      const LabelWidget(label: "What is the Feeding Regimen?"),
                      GetBuilder<CamelFeedingStausRadioController>(
                          init: CamelFeedingStausRadioController(),
                          builder: (feedingCtrl) {
                            return Column(
                              children: [
                                CamelFeedingRadioWidget(
                                    enumName: CamelFeedingStausRadio,
                                    yesValue: CamelFeedingStausRadio
                                        .availableAllDay,
                                    onChangedYes: (val) => feedingCtrl
                                        .onChange(
                                            val ??
                                                CamelFeedingStausRadio
                                                    .availableAllDay),
                                    noValue: CamelFeedingStausRadio
                                        .specificTimesaDay,
                                    onChangedNo: (val) => feedingCtrl.onChange(
                                        val ??
                                            CamelFeedingStausRadio
                                                .specificTimesaDay),
                                    groupValue: feedingCtrl.charcter,
                                    noAnswerValue:
                                        CamelFeedingStausRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        feedingCtrl.onChange(val ??
                                            CamelFeedingStausRadio.noAnswer)),
                                if (feedingCtrl.charcter ==
                                    CamelFeedingStausRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 77
                                      const LabelWidget(
                                          label:
                                              "How many times to feed a day?"),
                                      CamelHousingTextFieldWidget(
                                          title:
                                              "number of times to feed a Day :",
                                          onNoteChange: (val) {
                                            textCtrl.onChangeRegimenfeedsNo(val??"");
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      // if (pensCtrl.charcter == CamelPensRadio.no)
                      //   const CamelBranNotExistWidget(),
                    ],
                  );
                });
          }),
    ]);
  }
}
