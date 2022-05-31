import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../controller/horse_housing_textfield_controller.dart';
import 'horse_housing_textfield_widget.dart';

 

// ignore: must_be_immutable
class HorseBranExistWidget extends StatelessWidget {
    HorseBranExistWidget({Key? key}) : super(key: key);
HorseHousingTextFieldController textCtrl = Get.put(HorseHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendHorseHerdDataController>(
        init: SendHorseHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //? push in api object with id 48
              const LabelWidget(label: "What is the number of barns?"),
              HorseHousingTextFieldWidget(
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
              HorseHousingTextFieldWidget(
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
              HorseHousingTextFieldWidget(
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
