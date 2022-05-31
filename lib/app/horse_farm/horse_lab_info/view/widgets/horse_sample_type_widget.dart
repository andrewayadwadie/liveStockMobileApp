
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/horse_lab_info_controller.dart';
import '../../controller/horse_sample_type_controller.dart';
 

class HorseSampleTypeWidget extends StatelessWidget {
  const HorseSampleTypeWidget({
    Key? key,
    required this.sampleIndex,
  }) : super(key: key);
final int sampleIndex ;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HorseSampleTypeController>(
        init: HorseSampleTypeController(),
        builder: (controller) {
          return GetBuilder<HorseLabInfoController>(
            init:HorseLabInfoController() ,
            builder: (lab) {
              return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (ctx) => SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: ListView.builder(
                              itemCount: controller.sampleTypeList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    controller.onTapSelected(ctx, index, index);
                                    lab.addSampleType(sampleIndex,sampleType: controller.sampleTypeText.value);
                                    // log("message : ${lab.samples}");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 15),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height / 12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: Text(
                                        controller.sampleTypeList[index],
                                        style: const TextStyle(
                                            color: primaryColor, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 7, left: 10),
                    margin: const EdgeInsets.only(right: 40, left: 25, top: 20),
                    alignment: Alignment.centerRight,
                    // width:
                    //     MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          controller.sampleTypeText.value,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              height: 1.1,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: darkColor),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: darkColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ));
            }
          );
        });
  }
}
