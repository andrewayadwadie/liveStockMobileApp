import 'package:animal_wealth/app/camel_farm/camel_health_practices_operational_biosecurity/view/widgets/camel_operational_textfield_widget.dart';
import 'package:animal_wealth/app/camel_farm/camel_immunization/controller/camel_immunization_exist_controller.dart';
import 'package:animal_wealth/app/camel_farm/camel_immunization_new/controller/camel_get_immunizations_controllerl.dart';
import 'package:animal_wealth/app/camel_farm/clinical_examination/view/screen/camel_clinical_examination_screen.dart';
import 'package:animal_wealth/app/shared_widgets/custom_loader.dart';
import 'package:animal_wealth/app/shared_widgets/label_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';


class CamelImmunizationNewFormWidget extends StatelessWidget {
  const CamelImmunizationNewFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelImmunizationExistController>(
        init: CamelImmunizationExistController(),
        builder: (radio) {
          return Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: ListView(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.9,
                      width: MediaQuery.of(context).size.height / 4,
                      child: GetBuilder<CamelGetImmunizationsController>(
                          init: CamelGetImmunizationsController(),
                          builder: (typeCtrl) {
                            return 
                            typeCtrl.loading.value ==true?
                            const LoaderWidget()
                            :
                            ListView.builder(
                                itemCount: typeCtrl.immunization.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        title: Text(
                                            '${typeCtrl.immunization[index].name}'),
                                        leading: Checkbox(
                                          value: typeCtrl.choices == []
                                              ? false
                                              : typeCtrl.choices[index],
                                          onChanged: (val) => typeCtrl
                                              .changeCheckBox(val, index),
                                        ),
                                      ),
                                      if (typeCtrl.choices[index] == true)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const LabelWidget(
                                                label:
                                                    "How to give each immunization?"),
                                            CamelOperationalTextFieldWidget(
                                                title: "immunization way",
                                                onNoteChange: (val) {}),
                                            const LabelWidget(
                                                label:
                                                    "Is the full immunization program implemented?"),
                                           /*
                                            GetBuilder<CamelImmunizationProgramRadioController>(
                                                init:CamelImmunizationProgramRadioController(),
                                                builder: (ctrl) {
                                                  return CamelImmunizationProgramRadioWidget(
                                                    yesValue: "yes",
                                                    onChangedYes: (val) =>ctrl.onChange(val ?? "yes"),
                                                    noValue:CamelCoronaProgramRadio.no,
                                                    onChangedNo: (val) =>ctrl.onChange(val ?? "no"),
                                                    groupValue:ctrl.charcter);
                                                }),

                                                */
                                          ],
                                        )
                                    ],
                                  );
                                });
                          }),
                    )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Get.to(() => CamelclinicalExaminationScreen());
                },
                child: SizedBox(
                  child: SvgPicture.asset(
                    "assets/icons/next_button.svg",
                    width: MediaQuery.of(context).size.width / 10,
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                ),
              ),
            )
          ]);
        });
  }
}
