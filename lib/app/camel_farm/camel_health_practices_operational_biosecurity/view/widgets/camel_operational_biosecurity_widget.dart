import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_animal_bathed_radio_controller.dart';
import '../../controller/camel_animal_isolate_radio_controller.dart';
import '../../controller/camel_animal_quarantine_radio_controller.dart';
import '../../controller/camel_antibiotics_used_radio_controller.dart';
import '../../controller/camel_feeder_cleaned_radio_controller.dart';
import '../../controller/camel_floor_cleaned_radio_controller.dart';
import '../../controller/camel_milker_exist_radio_controller.dart';
import '../../controller/camel_operational_isolate_place_radio_controller.dart';
import '../../controller/camel_operational_sick_isolate_radio_controller.dart';
import '../../controller/camel_slaughter_place_radio_controller.dart';
import '../../controller/camel_slaughter_radio_controller.dart';
import 'camel_antibiotics_widget.dart';
import 'camel_milker_exist_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';

class CamelOpertionalBiosecurityWidget extends StatelessWidget {
  const CamelOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const LabelWidget(label: "Are sick animals isolated?"),
        GetBuilder<CamelsickIsolateRadioController>(
            init: CamelsickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelsickIsolateRadio,
                      yesValue: CamelsickIsolateRadio.yes,
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? CamelsickIsolateRadio.yes),
                      noValue: CamelsickIsolateRadio.no,
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? CamelsickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter),
                  if (sickisolateCtrl.charcter == CamelsickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?"),
                        GetBuilder<CamelIsolatePlaceRadioController>(
                            init: CamelIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelIsolatePlaceRadio,
                                  yesValue: CamelIsolatePlaceRadio.yes,
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? CamelIsolatePlaceRadio.yes),
                                  noValue: CamelIsolatePlaceRadio.no,
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? CamelIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter);
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(
            label:
                "Are newly purchased animals isolated before entering the herd ?"),
        GetBuilder<CamelsickAnimalIsolateRadioController>(
            init: CamelsickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelsickAnimalIsolateRadio,
                      yesValue: CamelsickAnimalIsolateRadio.yes,
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? CamelsickAnimalIsolateRadio.yes),
                      noValue: CamelsickAnimalIsolateRadio.no,
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? CamelsickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter),
                  if (animalIsoCtrl.charcter == CamelsickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label:
                                "Are there places designated for quarantine ?"),
                        GetBuilder<CamelAnimalIsolateQuarantineRadioController>(
                            init: CamelAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelAnimalIsolateQuarantineRadio,
                                  yesValue:
                                      CamelAnimalIsolateQuarantineRadio.yes,
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          CamelAnimalIsolateQuarantineRadio
                                              .yes),
                                  noValue: CamelAnimalIsolateQuarantineRadio.no,
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          CamelAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter);
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(label: "Are animals bathed ?"),
        GetBuilder<CamelAnimalBathedRadioController>(
            init: CamelAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelAnimalBathedRadio,
                      yesValue: CamelAnimalBathedRadio.yes,
                      onChangedYes: (val) => bathedCtrl
                          .onChange(val ?? CamelAnimalBathedRadio.yes),
                      noValue: CamelAnimalBathedRadio.no,
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? CamelAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter),
                  if (bathedCtrl.charcter == CamelAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "how many times?"),
                        CamelOperationalTextFieldWidget(
                            title: "how many times?", onNoteChange: (val) {})
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),

        //!-----------------------
        const LabelWidget(label: "Is the floor cleaned ?"),
        GetBuilder<CamelFloorCleanedRadioController>(
            init: CamelFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelFloorCleanedRadio,
                      yesValue: CamelFloorCleanedRadio.yes,
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? CamelFloorCleanedRadio.yes),
                      noValue: CamelFloorCleanedRadio.no,
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? CamelFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter),
                  if (floorCleanedCtrl.charcter == CamelFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "how many times?"),
                        CamelOperationalTextFieldWidget(
                            title: "how many times?", onNoteChange: (val) {})
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(label: "Are waterers and feeders cleaned ?"),
        GetBuilder<CamelFeederrCleanedRadioController>(
            init: CamelFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelFeederrCleanedRadio,
                      yesValue: CamelFeederrCleanedRadio.yes,
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? CamelFeederrCleanedRadio.yes),
                      noValue: CamelFeederrCleanedRadio.no,
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? CamelFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter),
                  if (feederCleanedCtrl.charcter ==
                      CamelFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(label: "how many times?"),
                        CamelOperationalTextFieldWidget(
                            title: "how many times?", onNoteChange: (val) {})
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        const LabelWidget(label: "How is farm waste disposed of?"),
        CamelOperationalTextFieldWidget(
            title: "How is farm waste disposed of?", onNoteChange: (val) {}),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        const LabelWidget(label: "How are dead animals disposed of?"),
        CamelOperationalTextFieldWidget(
            title: "How are dead animals disposed of?", onNoteChange: (val) {}),
        const LineWidget(),
        const LabelWidget(
            label: "Are the animals slaughtered inside the farm?"),
        GetBuilder<CamelSlaughterRadioController>(
            init: CamelSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSlaughterRadio,
                      yesValue: CamelSlaughterRadio.yes,
                      onChangedYes: (val) => slaughterCtrl
                          .onChange(val ?? CamelSlaughterRadio.yes),
                      noValue: CamelSlaughterRadio.no,
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? CamelSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter),
                  if (slaughterCtrl.charcter == CamelSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label: "Is there a place for slaughter?"),
                        GetBuilder<CamelSlaughterPlacerRadioController>(
                            init: CamelSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelSlaughterPlacerRadio,
                                  yesValue: CamelSlaughterPlacerRadio.yes,
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CamelSlaughterPlacerRadio.yes),
                                  noValue: CamelSlaughterPlacerRadio.no,
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CamelSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter);
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        const LabelWidget(label: "Is there a milker?"),
        GetBuilder<CamelMilkerExistRadioController>(
            init: CamelMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerExistRadio,
                      yesValue: CamelMilkerExistRadio.yes,
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? CamelMilkerExistRadio.yes),
                      noValue: CamelMilkerExistRadio.no,
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? CamelMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter),
                  if (milkerExistCtrl.charcter == CamelMilkerExistRadio.yes)
                    const CamelMilkerExistWidget()
                ],
              );
            }),
        
        const LineWidget(),
        //!---------------------
        const LabelWidget(label: "Are antibiotics used?"),
         GetBuilder<CamelAntibioticsUsedRadioController>(
            init: CamelAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelAntibioticsUsedRadio,
                      yesValue: CamelAntibioticsUsedRadio.yes,
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUsedRadio.yes),
                      noValue: CamelAntibioticsUsedRadio.no,
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter),
                  if (antiCtrl.charcter == CamelAntibioticsUsedRadio.yes)
                    const CamelAntibioticsWidget()
                ],
              );
            }),
        
      ],
    );
  }
}
