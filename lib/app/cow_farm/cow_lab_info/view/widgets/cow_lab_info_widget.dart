import '../../controller/cow_lab_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import 'cow_list_sample_widget.dart';
 
class CowLabInfoWidget extends StatelessWidget {
  const CowLabInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CowLabInfoController>(
        init: CowLabInfoController(),
        builder: (lab) {
          return ListView(children: [
            InkWell(
              onTap: () {
                lab.increaseList();
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 15,
                // width: MediaQuery.of(context).size.width/5,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 6),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "add sample",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
              height: MediaQuery.of(context).size.height / 1.6,
              child: ListView.builder(
                  itemCount: lab.samples.length,
                  itemBuilder: (context, index) {
                    return CowListSampleWidget(
                      index: index,
                      samplController: lab.sampleNumbertextEditList[index],
                      placeSamplController: lab.placetextEditList[index],
                    );
                  }),
            )
          ]);
        });
  }
}
