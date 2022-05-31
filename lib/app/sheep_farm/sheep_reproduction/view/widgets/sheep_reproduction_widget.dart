 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../controller/sheep_artificial_radio_controller.dart';
import '../../controller/sheep_difficulty_pregnancy_radio_controller.dart';
import '../../controller/sheep_obstructed_labor_radio_controller.dart';
import '../../controller/sheep_reproduction_radio_controller.dart';
import '../../controller/sheep_reproduction_textfeild_controller.dart';
import '../../controller/sheep_semen_source_controller.dart';
import '../../controller/sheep_unsatisfactory_abortion_radio_controller.dart';
import 'sheep_breed_type_widget.dart';
import 'sheep_difficult_childbirth_widget.dart';
import 'sheep_fertilization_method_widget.dart';
import 'sheep_reproduction_radio_widget.dart';
import 'sheep_reproduction_textfield_widget.dart';
import 'sheep_reproduction_way_widget.dart';
import 'sheep_semen_souce_radio_widget.dart';
 
 

// ignore: must_be_immutable
class SheepReproductionWidget extends StatelessWidget {
    SheepReproductionWidget({Key? key}) : super(key: key);
SheepReproductionTextFieldController  reproductionTextFieldCtrl = Get.put(SheepReproductionTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendSheepHerdDataController>(
        init: SendSheepHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              const LabelWidget(label: "Is pregnancy diagnosed in the herd?"),
              GetBuilder<SheepReproductionRadioController>(
                  init: SheepReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        SheepReproductionRadioWidget(
                            enumName: SheepReproductionRadio,
                            yesValue: SheepReproductionRadio.yes,
                            onChangedYes: (val) => reproCtrl
                                .onChange(val ?? SheepReproductionRadio.yes),
                            noValue: SheepReproductionRadio.no,
                            onChangedNo: (val) => reproCtrl
                                .onChange(val ?? SheepReproductionRadio.no),
                            groupValue: reproCtrl.charcter,
                             noAnswerValue:SheepReproductionRadio .noAnswer,
                            onChangedNoAnswer: (val) => reproCtrl
                                .onChange(val ??SheepReproductionRadio .noAnswer),
                            ),
                        if (reproCtrl.charcter == SheepReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              LabelWidget(
                                  label: "What is the diagnostic method?"),
                              SheepReproductionWayWidget(),
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
              GetBuilder<SheepArtificialRadioController>(
                  init: SheepArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        SheepReproductionRadioWidget(
                            enumName: SheepArtificialRadio,
                            yesValue: SheepArtificialRadio.yes,
                            onChangedYes: (val) => artCtrl
                                .onChange(val ?? SheepArtificialRadio.yes),
                            noValue: SheepArtificialRadio.no,
                            onChangedNo: (val) => artCtrl
                                .onChange(val ?? SheepArtificialRadio.no),
                            groupValue: artCtrl.charcter,
                            noAnswerValue:SheepArtificialRadio .noAnswer,
                            onChangedNoAnswer: (val) => artCtrl
                                .onChange(val ??SheepArtificialRadio .noAnswer),
                          
                            
                            ),
                        if (artCtrl.charcter == SheepArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(label: "What type of breed?"),
                              const SheepBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              const LabelWidget(
                                  label: "What is the source of semen?"),
                              GetBuilder<SheepSemenSourceRadioController>(
                                  init: SheepSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        SheepSemenSourceRadioWidget(
                                            enumName: SheepSemenSourceRadio,
                                            yesValue:
                                                SheepSemenSourceRadio.local,
                                            onChangedYes: (val) =>
                                                semenCtrl.onChange(val ??
                                                    SheepSemenSourceRadio
                                                        .local),
                                            noValue: SheepSemenSourceRadio
                                                .importation,
                                            onChangedNo: (val) =>
                                                semenCtrl.onChange(val ??
                                                    SheepSemenSourceRadio
                                                        .importation),
                                            groupValue: semenCtrl.charcter,
                                            noAnswerValue: SheepSemenSourceRadio.noAnswer,
                                            onChangedNoAnswer: (val) =>
                                                semenCtrl.onChange(val ??
                                                    SheepSemenSourceRadio
                                                        .noAnswer),
                                            
                                            ),
                                        if (semenCtrl.charcter ==
                                            SheepSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const LabelWidget(
                                                  label:
                                                      "What is the importing country?"),
                                              SheepReproductionTextFieldWidget(
                                                  title: "importing country :",
                                                  onNoteChange: (val) {
                                                   reproductionTextFieldCtrl.onChangeImportingCounrty(val??"");
                                                  })
                                            ],
                                          )
                                      ],
                                    );
                                  }),
                              const LabelWidget(
                                  label: "Who does artificial insemination?"),
                              const SheepFertilizationMethodWidget()
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
              GetBuilder<SheepDifficultyPregnancyRadioController>(
                  init: SheepDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        SheepReproductionRadioWidget(
                            enumName: SheepDifficultyPregnancyRadio,
                            yesValue: SheepDifficultyPregnancyRadio.yes,
                            onChangedYes: (val) => diffCtrl.onChange(
                                val ?? SheepDifficultyPregnancyRadio.yes),
                            noValue: SheepDifficultyPregnancyRadio.no,
                            onChangedNo: (val) => diffCtrl.onChange(
                                val ?? SheepDifficultyPregnancyRadio.no),
                            groupValue: diffCtrl.charcter,
                            noAnswerValue:SheepDifficultyPregnancyRadio.noAnswer ,
                            onChangedNoAnswer: (val) => diffCtrl.onChange(
                                val ?? SheepDifficultyPregnancyRadio.noAnswer),
                            
                            
                            ),
                        if (diffCtrl.charcter ==
                            SheepDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?"),
                              SheepReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoDifficulty(val??"");
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
              GetBuilder<SheepUnsatisfactoryAbortionRadioController>(
                  init: SheepUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        SheepReproductionRadioWidget(
                            enumName: SheepUnsatisfactoryAbortionRadio,
                            yesValue: SheepUnsatisfactoryAbortionRadio.yes,
                            onChangedYes: (val) => abortionCtrl.onChange(
                                val ?? SheepUnsatisfactoryAbortionRadio.yes),
                            noValue: SheepUnsatisfactoryAbortionRadio.no,
                            onChangedNo: (val) => abortionCtrl.onChange(
                                val ?? SheepUnsatisfactoryAbortionRadio.no),
                            groupValue: abortionCtrl.charcter,
                            noAnswerValue:SheepUnsatisfactoryAbortionRadio.noAnswer ,
                            onChangedNoAnswer: (val) => abortionCtrl.onChange(
                                val ?? SheepUnsatisfactoryAbortionRadio.noAnswer),
                            ),
                        if (abortionCtrl.charcter ==
                            SheepUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?"),
                              SheepReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoAboration(val??"");
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
              GetBuilder<SheepobstructedLaborRadioController>(
                  init: SheepobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        SheepReproductionRadioWidget(
                            enumName: SheepobstructedLaborRadio,
                            yesValue: SheepobstructedLaborRadio.yes,
                            onChangedYes: (val) => obstructedCtrl
                                .onChange(val ?? SheepobstructedLaborRadio.yes),
                            noValue: SheepobstructedLaborRadio.no,
                            onChangedNo: (val) => obstructedCtrl
                                .onChange(val ?? SheepobstructedLaborRadio.no),
                            groupValue: obstructedCtrl.charcter,
                            noAnswerValue: SheepobstructedLaborRadio.noAnswer,
                            onChangedNoAnswer: (val) => obstructedCtrl
                                .onChange(val ?? SheepobstructedLaborRadio.noAnswer),
                          
                            
                            ),
                        if (obstructedCtrl.charcter ==
                            SheepobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?"),
                              SheepReproductionTextFieldWidget(
                                  title: "number of cases",
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoLabor(val??"");
                              
                                  }),
                              const LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?"),
                              const SheepDifficultChildbirthWidget()
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
