import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../controller/camel_artificial_radio_controller.dart';
import '../../controller/camel_difficulty_pregnancy_radio_controller.dart';
import '../../controller/camel_obstructed_labor_radio_controller.dart';
import '../../controller/camel_reproduction_radio_controller.dart';
import '../../controller/camel_semen_source_controller.dart';
import '../../controller/camel_unsatisfactory_abortion_radio_controller.dart';
import 'camel_breed_type_widget.dart';
import 'camel_difficult_childbirth_widget.dart';
import 'camel_fertilization_method_widget.dart';
import 'camel_reproduction_radio_widget.dart';
import 'camel_reproduction_textfield_widget.dart';
import 'camel_reproduction_way_widget.dart';
import 'camel_semen_souce_radio_widget.dart';

class CamelReproductionWidget extends StatelessWidget {
  const CamelReproductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
        init: SendCamelHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              const LabelWidget(label: "Is pregnancy diagnosed in the herd?"),
              GetBuilder<CamelReproductionRadioController>(
                  init: CamelReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                            enumName: CamelReproductionRadio,
                            yesValue: CamelReproductionRadio.yes,
                            onChangedYes: (val) => reproCtrl
                                .onChange(val ?? CamelReproductionRadio.yes),
                            noValue: CamelReproductionRadio.no,
                            onChangedNo: (val) => reproCtrl
                                .onChange(val ?? CamelReproductionRadio.no),
                            groupValue: reproCtrl.charcter),
                        if (reproCtrl.charcter == CamelReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              LabelWidget(
                                  label: "What is the diagnostic method?"),
                              CamelReproductionWayWidget(),
                            ],
                          )
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              const LabelWidget(label: "Is there artificial insemination?"),
              GetBuilder<CamelArtificialRadioController>(
                  init: CamelArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        CamelReproductionRadioWidget(
                            enumName: CamelArtificialRadio,
                            yesValue: CamelArtificialRadio.yes,
                            onChangedYes: (val) => artCtrl
                                .onChange(val ?? CamelArtificialRadio.yes),
                            noValue: CamelArtificialRadio.no,
                            onChangedNo: (val) => artCtrl
                                .onChange(val ?? CamelArtificialRadio.no),
                            groupValue: artCtrl.charcter),
                        if (artCtrl.charcter == CamelArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(label: "What type of breed?"),
                              const CamelBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              const LabelWidget(
                                  label: "What is the source of semen?"),
                              GetBuilder<CamelSemenSourceRadioController>(
                                  init: CamelSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        CamelSemenSourceRadioWidget(
                                            enumName: CamelSemenSourceRadio,
                                            yesValue:
                                                CamelSemenSourceRadio.local,
                                            onChangedYes: (val) =>
                                                semenCtrl.onChange(val ??
                                                    CamelSemenSourceRadio
                                                        .local),
                                            noValue: CamelSemenSourceRadio
                                                .importation,
                                            onChangedNo: (val) =>
                                                semenCtrl.onChange(val ??
                                                    CamelSemenSourceRadio
                                                        .importation),
                                            groupValue: semenCtrl.charcter),
                                        if (semenCtrl.charcter ==
                                            CamelSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const LabelWidget(
                                                  label:
                                                      "What is the importing country?"),
                                              CamelReproductionTextFieldWidget(
                                                  title: "importing country :",
                                                  onNoteChange: (val) {})
                                            ],
                                          )
                                      ],
                                    );
                                  }),
                              const LabelWidget(
                                  label: "Who does artificial insemination?"),
                              const CamelFertilizationMethodWidget()
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 113 if yes and 114 No
              const LabelWidget(
                  label: "Are there cases of difficulty pregnancy?"),
              GetBuilder<CamelDifficultyPregnancyRadioController>(
                  init: CamelDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                            enumName: CamelDifficultyPregnancyRadio,
                            yesValue: CamelDifficultyPregnancyRadio.yes,
                            onChangedYes: (val) => diffCtrl.onChange(
                                val ?? CamelDifficultyPregnancyRadio.yes),
                            noValue: CamelDifficultyPregnancyRadio.no,
                            onChangedNo: (val) => diffCtrl.onChange(
                                val ?? CamelDifficultyPregnancyRadio.no),
                            groupValue: diffCtrl.charcter),
                        if (diffCtrl.charcter ==
                            CamelDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?"),
                              CamelReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {
                                    sendDataCtrl.addAnswer(
                                        id: 115, answer: val ?? "");
                                  })
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //!--------------------------------------------------------------
              //? push in api object with id 116 if yes and 117 No
              const LabelWidget(
                  label: "Are there cases of unsatisfactory abortion?"),
              GetBuilder<CamelUnsatisfactoryAbortionRadioController>(
                  init: CamelUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                            enumName: CamelUnsatisfactoryAbortionRadio,
                            yesValue: CamelUnsatisfactoryAbortionRadio.yes,
                            onChangedYes: (val) => abortionCtrl.onChange(
                                val ?? CamelUnsatisfactoryAbortionRadio.yes),
                            noValue: CamelUnsatisfactoryAbortionRadio.no,
                            onChangedNo: (val) => abortionCtrl.onChange(
                                val ?? CamelUnsatisfactoryAbortionRadio.no),
                            groupValue: abortionCtrl.charcter),
                        if (abortionCtrl.charcter ==
                            CamelUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?"),
                              CamelReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {
                                    sendDataCtrl.addAnswer(
                                        id: 118, answer: val ?? "");
                                  })
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //!--------------------------------------------------------------
              //? push in api object with id 119 if yes and 120 No
              const LabelWidget(label: "Are there cases of obstructed labor?"),
              GetBuilder<CamelobstructedLaborRadioController>(
                  init: CamelobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                            enumName: CamelobstructedLaborRadio,
                            yesValue: CamelobstructedLaborRadio.yes,
                            onChangedYes: (val) => obstructedCtrl
                                .onChange(val ?? CamelobstructedLaborRadio.yes),
                            noValue: CamelobstructedLaborRadio.no,
                            onChangedNo: (val) => obstructedCtrl
                                .onChange(val ?? CamelobstructedLaborRadio.no),
                            groupValue: obstructedCtrl.charcter),
                        if (obstructedCtrl.charcter ==
                            CamelobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?"),
                              CamelReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {}),
                              const LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?"),
                              const CamelDifficultChildbirthWidget()
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
            ],
          );
        });
  }
}
