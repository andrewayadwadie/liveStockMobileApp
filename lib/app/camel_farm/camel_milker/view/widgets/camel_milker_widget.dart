import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_milker_building_radio_controller.dart';
import '../../controller/camel_milker_building_type_radio_controller.dart';
import '../../controller/camel_milker_place_radio_controller.dart';
import 'camel_milker_building_radio_widget.dart';
import 'camel_milker_building_type_radio_widget.dart';
import 'camel_milker_place_widget.dart';
import 'camel_milker_textfield_widget.dart';
import 'camel_milker_type_widget.dart';

class CamelMilkerWidget extends StatelessWidget {
  const CamelMilkerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
      init: SendCamelHerdDataController(),
      builder: (sendDataCtrl) {
        return ListView(
          children: [
            const LabelWidget(label: "What type of milker?"),
            const CamelMilkerTypeWidget(),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1,
            ),
            const LabelWidget(label: "How many times are milking per day?"),
            CamelMilkerTextFieldWidget(
                title: "number of milking times per day :", onNoteChange: (val) {
                  sendDataCtrl.addAnswer(id: 124, answer: val??"");
                }),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1,
            ),
            //? push in api id 125 if yes and 126 if no
            const LabelWidget(label: "Is there a place designated for milking ?"),
            GetBuilder<CamelMilkerPlaceRadioController>(
                init: CamelMilkerPlaceRadioController(),
                builder: (milkerPlaceCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CamelMilkerPlaceRadioWidget(
                          enumName: CamelMilkerPlaceRadio,
                          yesValue: CamelMilkerPlaceRadio.yes,
                          onChangedYes: (val) => milkerPlaceCtrl
                              .onChange(val ?? CamelMilkerPlaceRadio.yes),
                          noValue: CamelMilkerPlaceRadio.no,
                          onChangedNo: (val) => milkerPlaceCtrl
                              .onChange(val ?? CamelMilkerPlaceRadio.no),
                          groupValue: milkerPlaceCtrl.charcter),
                      if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.yes)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             //? push in api id 127 if milkerBuilding and 128 if barn
                            const LabelWidget(label: "Place :"),
                            GetBuilder<CamelMilkerBuildingRadioController>(
                                init: CamelMilkerBuildingRadioController(),
                                builder: (buildingCtrl) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CamelMilkerBuildingRadioWidget(
                                          enumName: CamelMilkerBuildingRadio,
                                          yesValue: CamelMilkerBuildingRadio
                                              .milkerBuilding,
                                          onChangedYes: (val) =>
                                              buildingCtrl.onChange(val ??
                                                  CamelMilkerBuildingRadio
                                                      .milkerBuilding),
                                          noValue: CamelMilkerBuildingRadio.barn,
                                          onChangedNo: (val) =>
                                              buildingCtrl.onChange(val ??
                                                  CamelMilkerBuildingRadio.barn),
                                          groupValue: buildingCtrl.charcter),
                                      if (buildingCtrl.charcter ==
                                          CamelMilkerBuildingRadio.milkerBuilding)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                             //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                            const LabelWidget(label: "building type :"),
                                            GetBuilder<
                                                    CamelMilkerBuildingTypeRadioController>(
                                                init:
                                                    CamelMilkerBuildingTypeRadioController(),
                                                builder: (buildingTypeCtrl) {
                                                  return Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      CamelMilkerBuildingRadioTypeWidget(
                                                          enumName:
                                                              CamelMilkerBuildingTypeRadio,
                                                          yesValue:
                                                              CamelMilkerBuildingTypeRadio
                                                                  .fullyClosed,
                                                          onChangedYes: (val) =>
                                                              buildingTypeCtrl.onChange(val ??
                                                                  CamelMilkerBuildingTypeRadio
                                                                      .fullyClosed),
                                                          noValue:
                                                              CamelMilkerBuildingTypeRadio
                                                                  .halfWallWithCanopy,
                                                          onChangedNo: (val) =>
                                                              buildingTypeCtrl
                                                                  .onChange(val ??
                                                                      CamelMilkerBuildingTypeRadio
                                                                          .halfWallWithCanopy),
                                                          groupValue:
                                                              buildingTypeCtrl
                                                                  .charcter),
                                                    ],
                                                  );
                                                }),
                                          ],
                                        ),
                                    ],
                                  );
                                }),
                          ],
                        ),
                    ],
                  );
                }),
          ],
        );
      }
    );
  }
}
