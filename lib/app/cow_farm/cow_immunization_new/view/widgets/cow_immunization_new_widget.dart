import '../../controller/cow_immunization_exist_controller.dart';
import '../../controller/cow_send_new_immunization_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import 'cow_immunization_data_widget.dart';
 

// ignore: must_be_immutable
class CowImmunizationNewFormWidget extends StatelessWidget {
  CowImmunizationNewFormWidget({Key? key}) : super(key: key);
  //List<String> immunizaionWay = [];
  CowSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(CowSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CowImmunizationExistController>(
        init: CowImmunizationExistController(),
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
                    leading: Radio<CowImmunizationExist>(
                      value: CowImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CowImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<CowImmunizationExist>(
                      value: CowImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CowImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == CowImmunizationExist.yes)
                    CowImmunizationDataWidget()
                ],
              ),
            ),
           
          ]);
        });
  }
}
