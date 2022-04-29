import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_animal_pest_control_radio_controller.dart';
import '../../controller/camel_blood_parasites_radio_controller.dart';
import '../../controller/camel_dippers_radio_controller.dart';
import '../../controller/camel_farm_pest_control_radio_controller.dart';
import '../../controller/camel_insect_exist_radio_controller.dart';
import '../../controller/camel_milk_sample_radio_controller.dart';
import '../../controller/camel_milker_cleaned_radio_controller.dart';
import '../../controller/camel_milker_tool_cleaned_radio_controller.dart';
import '../../controller/camel_sanitizers_milker_tool_radio_controller.dart';
import '../../controller/camel_sanitizers_used_radio_controller.dart';
import '../../controller/camel_udder_washed_radio_controller.dart';
import 'camel_blood_parasites_widget.dart';
import 'camel_chemicals_used_widget.dart';
import 'camel_dipper_radio_widget.dart';
import 'camel_mastitis_milked_widget.dart';
import 'camel_milker_tools_sanitizers_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';
import 'camel_sanitizers_used_widget.dart';


class CamelMilkerExistWidget extends StatelessWidget {
  const CamelMilkerExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
        const LabelWidget(label: "Is the Milker cleaned ?"),
        GetBuilder<CamelMilkerCleanedRadioController>(
            init: CamelMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerCleanedRadio,
                      yesValue: CamelMilkerCleanedRadio.yes,
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? CamelMilkerCleanedRadio.yes),
                      noValue: CamelMilkerCleanedRadio.no,
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? CamelMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter),
                  if (milkerCleanedCtrl.charcter == CamelMilkerCleanedRadio.yes)
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
        const LabelWidget(label: "Is the Milker tools cleaned ?"),
        GetBuilder<CamelMilkerToolsCleanedRadioController>(
            init: CamelMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerToolsCleanedRadio,
                      yesValue: CamelMilkerToolsCleanedRadio.yes,
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CamelMilkerToolsCleanedRadio.yes),
                      noValue: CamelMilkerToolsCleanedRadio.no,
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CamelMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter),
                  if (milkerToolsCleanedCtrl.charcter ==
                      CamelMilkerToolsCleanedRadio.yes)
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
        const LabelWidget(label: "Are sanitizers used?"),
        GetBuilder<CamelSanitizersUsedRadioController>(
            init: CamelSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSanitizersUsedRadio,
                      yesValue: CamelSanitizersUsedRadio.yes,
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CamelSanitizersUsedRadio.yes),
                      noValue: CamelSanitizersUsedRadio.no,
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CamelSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter),
                  if (sanitizersUsedCtrl.charcter ==
                      CamelSanitizersUsedRadio.yes)
                    const CamelsanitizersUsedWidget()
                ],
              );
            }),

        //!-----------------------
        const LabelWidget(label: "Are milking equipment disinfectants used?"),
        GetBuilder<CamelSanitizersMilkerToolsRadioController>(
            init: CamelSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSanitizersMilkerToolsRadio,
                      yesValue: CamelSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelSanitizersMilkerToolsRadio.yes),
                      noValue: CamelSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CamelSanitizersMilkerToolsRadio.yes)
                    const CamelsanitizersMilkerToolsWidget()
                ],
              );
            }),
        //!-----------------------
        const LabelWidget(
            label:
                "Is a milk sample examined for early detection of mastitis?"),
        GetBuilder<CamelMIlkSampleRadioController>(
            init: CamelMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelMIlkSampleRadio,
                  yesValue: CamelMIlkSampleRadio.yes,
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelMIlkSampleRadio.yes),
                  noValue: CamelMIlkSampleRadio.no,
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter);
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(label: "Are nipple sinks used?"),
        GetBuilder<CamelDipperRadioController>(
            init: CamelDipperRadioController(),
            builder: (milkSampleCtrl) {
              return CamelDipperRadioWidget(
                  enumName: CamelDipperRadio,
                  yesValue: CamelDipperRadio.after,
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelDipperRadio.after),
                  noValue: CamelDipperRadio.before,
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelDipperRadio.before),
                  groupValue: milkSampleCtrl.charcter);
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(label: " Is the udder washed?"),
        GetBuilder<CamelUdderWashedRadioController>(
            init: CamelUdderWashedRadioController(),
            builder: (milkSampleCtrl) {
              return CamelDipperRadioWidget(
                  enumName: CamelUdderWashedRadio,
                  yesValue: CamelUdderWashedRadio.after,
                  onChangedYes: (val) => milkSampleCtrl
                      .onChange(val ?? CamelUdderWashedRadio.after),
                  noValue: CamelUdderWashedRadio.before,
                  onChangedNo: (val) => milkSampleCtrl
                      .onChange(val ?? CamelUdderWashedRadio.before),
                  groupValue: milkSampleCtrl.charcter);
            }),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(
            label: "When should animals with mastitis be milked?"),
        const CamelMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
        const LabelWidget(label: "Are there animals with insects?"),
        GetBuilder<CamelInsectExistRadioController>(
            init: CamelInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelInsectExistRadio,
                      yesValue: CamelInsectExistRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelInsectExistRadio.yes),
                      noValue: CamelInsectExistRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CamelInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label: "How many animals are infected?"),
                        CamelOperationalTextFieldWidget(
                            title: "numbers of animals are infected",
                            onNoteChange: (val) {}),
                        //! insect type
                        const LabelWidget(label: "insect type : "),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                          child: GetBuilder<InsectTypeController>(
                              init: InsectTypeController(),
                              builder: (insect) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text('tick'),
                                          Checkbox(
                                            value: insect.tick,
                                            onChanged: (val) =>
                                                insect.tickonChange(val),
                                          ),
                                          const Text('flea'),
                                          Checkbox(
                                            value: insect.flea,
                                            onChanged: (val) =>
                                                insect.fleaOnChange(val),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text('mosquito'),
                                          Checkbox(
                                            value: insect.mosquito,
                                            onChanged: (val) =>
                                                insect.mosquitoonChange(val),
                                          ),
                                          const Text('vermin'),
                                          Checkbox(
                                            value: insect.hamosh,
                                            onChanged: (val) =>
                                                insect.hamoshonChange(val),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        const LineWidget(),
                        const LabelWidget(
                            label: "Is there an animal pest control program?"),
                        GetBuilder<CamelInsectAnimalPestControlRadioController>(
                            init: CamelInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName:
                                          CamelInsectAnimalPestControlRadio,
                                      yesValue:
                                          CamelInsectAnimalPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              CamelInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue:
                                          CamelInsectAnimalPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              CamelInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter),
                                  if (animalPestCtrl.charcter ==
                                      CamelInsectAnimalPestControlRadio.yes)
                                    const CamelChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        const LabelWidget(
                            label: "Is there an Farm pest control program?"),
                        GetBuilder<CamelInsectFarmPestControlRadioController>(
                            init: CamelInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName: CamelInsectFarmPestControlRadio,
                                      yesValue:
                                          CamelInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelInsectFarmPestControlRadio
                                                  .yes),
                                      noValue:
                                          CamelInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelInsectFarmPestControlRadio
                                                  .no),
                                      groupValue: farmPestCtrl.charcter),
                                  if (farmPestCtrl.charcter ==
                                      CamelInsectFarmPestControlRadio.yes)
                                    const CamelChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        const LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?"),
                        GetBuilder<CamelbloodParasitesRadioController>(
                            init: CamelbloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName: CamelbloodParasitesRadio,
                                      yesValue: CamelbloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelbloodParasitesRadio.yes),
                                      noValue: CamelbloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelbloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter),
                                  if (farmPestCtrl.charcter ==
                                      CamelbloodParasitesRadio.yes)
                                    const CamelbloodParasitesWidget()
                                ],
                              );
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),

        //!-----------------------
/*
        GetBuilder<CamelImmunizationExistController>(
            init: CamelImmunizationExistController(),
            builder: (radio) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Was Immunization done in the previous year?",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.yes, 
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == CamelImmunizationExist.yes)
                    GetBuilder<CamelImmunizationTypesController>(
                        init: CamelImmunizationTypesController(),
                        builder: (typeCtrl) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Camel Immunizations Types :",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ListTile(
                                title: const Text('Brucellosis'),
                                leading: Checkbox(
                                  value: typeCtrl.brucellosis,
                                  onChanged: (val) =>
                                      typeCtrl.brucellosisonChange(val),
                                ),
                              ),
                              if (typeCtrl.brucellosis)
                                const CamelBrucellosisWidget(),
                              ListTile(
                                title: const Text('Corona Mers For Camels'),
                                leading: Checkbox(
                                  value: typeCtrl.coronaMersForCamels,
                                  onChanged: (val) =>
                                      typeCtrl.coronaMersForCamelsChange(val),
                                ),
                              ),
                              if (typeCtrl.coronaMersForCamels)
                                const CamelCoronaWidget(),
                              ListTile(
                                title: const Text('Smallpox For Camels'),
                                leading: Checkbox(
                                  value: typeCtrl.smallpoxForCamels,
                                  onChanged: (val) =>
                                      typeCtrl.smallpoxForCamelsonChange(val),
                                ),
                              ),
                              if (typeCtrl.smallpoxForCamels)
                                const CamelSmallBoxWidget(),
                              ListTile(
                                title: const Text('PPR'),
                                leading: Checkbox(
                                  value: typeCtrl.ppr,
                                  onChanged: (val) => typeCtrl.ppronChange(val),
                                ),
                              ),
                              if (typeCtrl.ppr) const CamelPPRWidget(),
                              ListTile(
                                title: const Text('foot and mouth disease '),
                                leading: Checkbox(
                                  value: typeCtrl.fmd,
                                  onChanged: (val) => typeCtrl.fmdChange(val),
                                ),
                              ),
                              if (typeCtrl.fmd) const CamelFootWidget(),
                              ListTile(
                                title: const Text('rift valley fever'),
                                leading: Checkbox(
                                  value: typeCtrl.rvf,
                                  onChanged: (val) => typeCtrl.rvfChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('IPR'),
                                leading: Checkbox(
                                  value: typeCtrl.ipr,
                                  onChanged: (val) => typeCtrl.iprChange(val),
                                ),
                              ),
                              if (typeCtrl.ipr) const CamelIPRWidget(),
                              ListTile(
                                title: const Text(
                                    'Trypanosomiasis And Other Blood Parasites'),
                                leading: Checkbox(
                                  value: typeCtrl
                                      .trypanosomiasisAndOtherBloodParasites,
                                  onChanged: (val) => typeCtrl
                                      .trypanosomiasisAndOtherBloodParasitesChange(
                                          val),
                                ),
                              ),
                              if (typeCtrl
                                  .trypanosomiasisAndOtherBloodParasites)
                                const CamelTrypanWidget(),
                            ],
                          );
                        }),
                ],
              );
            })
      */
      ],
    );
  }
}
