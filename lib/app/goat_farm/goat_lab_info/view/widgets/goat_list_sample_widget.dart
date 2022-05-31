import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_lab_info_controller.dart';
import 'goat_place_sample_widget.dart';
import 'goat_sample_type_widget.dart';
import 'goat_sample_widget.dart';
 

class GoatListSampleWidget extends StatelessWidget {
  const GoatListSampleWidget({
    Key? key,
    required this.index,
    required this.samplController,
    required this.placeSamplController,
  }) : super(key: key);
  final int index;
  final TextEditingController samplController;
  final TextEditingController placeSamplController;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoatLabInfoController>(
        init: GoatLabInfoController(),
        builder: (lab) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 1.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: lightPrimaryColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Form(
              //   key: itemFormKey[index],
              child: Column(
                children: [
                  GoatSampleWidget(
                      controller: samplController,
                      onChange: (val) {
                        lab.addSample(index, sampleNumber: val ?? "");
                      }),
                  GoatPlaceSampleWidget(
                      onChange: (val) {
                        lab.addPlaceSample(index, placeSample: val ?? "");
                      },
                      controller: placeSamplController),
                  GoatSampleTypeWidget(
                    sampleIndex: index,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelWidget(
                          label: "What is the send sample date ?"),
                      GestureDetector(
                        onTap: () {
                          lab.onDateChange(context, index);
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 13,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "${lab.date[index].year}-${lab.date[index].month}-${lab.date[index].day} ",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: whiteColor, fontSize: 15),
                            )),
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      log("list was deleted = ${lab.samples}");
                      lab.decreaseList(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2.8,
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        color: redColor,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.delete_forever,
                            color: Colors.white,
                          ),
                          Text(
                            'Delete Sample'.tr,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
