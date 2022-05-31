import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../controller/cow_housing_textfield_controller.dart';
import 'cow_housing_textfield_widget.dart';
 

 

// ignore: must_be_immutable
class CowBranExistWidget extends StatelessWidget {
    CowBranExistWidget({Key? key}) : super(key: key);
CowHousingTextFieldController textCtrl = Get.put(CowHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCowHerdDataController>(
        init: SendCowHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //? push in api object with id 48
              const LabelWidget(label: "What is the number of barns?"),
              CowHousingTextFieldWidget(
                  title: "number of barns?",
                  onNoteChange: (val) {
                    textCtrl.onChangeBarnsNo(val??"");
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 49
              const LabelWidget(label: "What is the barn area?"),
              CowHousingTextFieldWidget(
                  title: " barn area ?",
                  onNoteChange: (val) {
                  textCtrl.onChangeBarnArea(val??"");
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 50
              const LabelWidget(label: "What is the number of barn animals"),
              CowHousingTextFieldWidget(
                  title: "number of barn animals ",
                  onNoteChange: (val) {
                   textCtrl.onChangeAnimalBarn(val??"");
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
