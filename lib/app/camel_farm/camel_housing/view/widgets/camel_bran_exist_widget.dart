import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../controller/camel_housing_textfield_controller.dart';
import 'camel_housing_textfield_widget.dart';

// ignore: must_be_immutable
class CamelBranExistWidget extends StatelessWidget {
    CamelBranExistWidget({Key? key}) : super(key: key);
CamelHousingTextFieldController textCtrl = Get.put(CamelHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
        init: SendCamelHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //? push in api object with id 48
              const LabelWidget(label: "What is the number of barns?"),
              CamelHousingTextFieldWidget(
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
              CamelHousingTextFieldWidget(
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
              CamelHousingTextFieldWidget(
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
