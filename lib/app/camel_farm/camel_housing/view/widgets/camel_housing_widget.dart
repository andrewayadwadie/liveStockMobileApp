import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/animal_pens_radio_controller.dart';
import 'camel_bran_exist_widget.dart';
import 'camel_bran_not_exist_widget.dart';
import 'camel_housing_radio_widget.dart';

class CamelHousingWidget extends StatelessWidget {
  const CamelHousingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
       //? push in api object with id 46 if yes and 47 No
      const LabelWidget(label: "Are there any animal pens?"),
      GetBuilder<CamelPensRadioController>(
          init: CamelPensRadioController(),
          builder: (pensCtrl) {
            return Column(
              children: [
                CamelPensRadioWidget(
                    enumName: CamelPensRadio,
                    yesValue: CamelPensRadio.yes,
                    onChangedYes: (val) =>
                        pensCtrl.onChange(val ?? CamelPensRadio.yes),
                    noValue: CamelPensRadio.no,
                    onChangedNo: (val) =>
                        pensCtrl.onChange(val ?? CamelPensRadio.no),
                    groupValue: pensCtrl.charcter),
                if (pensCtrl.charcter == CamelPensRadio.yes)
                  const CamelBranExistWidget(),
                if (pensCtrl.charcter == CamelPensRadio.no)
                  const CamelBranNotExistWidget(),
              ],
            );
          }),
    ]);
  }
}
