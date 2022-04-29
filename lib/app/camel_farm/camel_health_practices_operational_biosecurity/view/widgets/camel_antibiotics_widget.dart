import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_antibiotics_date_controller.dart';
import '../../controller/camel_antibiotics_senstivity_radio_controller.dart';
import '../../controller/camel_antibiotics_use_radio_controller.dart';
import 'camel_antibiotics_description_widget.dart';
import 'camel_antibiotics_having_widget.dart';
import 'camel_antibiotics_type_widget.dart';
import 'camel_antibiotics_use_radio_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';

class CamelAntibioticsWidget extends StatelessWidget {
  const CamelAntibioticsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWidget(
            label: "What are the indications for the use of antibiotics?"),
        GetBuilder<CamelAntibioticsUseRadioController>(
            init: CamelAntibioticsUseRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  CamelAntibioticsUseRadioWidget(
                      enumName: CamelAntibioticsUseRadio,
                      yesValue: CamelAntibioticsUseRadio.protection,
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUseRadio.protection),
                      noValue: CamelAntibioticsUseRadio.treatment,
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUseRadio.treatment),
                      groupValue: antiCtrl.charcter),
                ],
              );
            }),
        const LineWidget(),
        const LabelWidget(label: "Types of antibiotics used?"),
        const CamelAntibioticsTypeWidget(),
        const LineWidget(),
        const LabelWidget(label: "How is each antibiotic given?"),
        CamelOperationalTextFieldWidget(
            title: "How is each antibiotic given?", onNoteChange: (val) {}),
        const LineWidget(),
        const LabelWidget(
            label: "Are antibiotic sensitivity tests performed before use?"),
        GetBuilder<CamelAntibioticsSenstivityRadioController>(
            init: CamelAntibioticsSenstivityRadioController(),
            builder: (milkerExistCtrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelAntibioticsSenstivityRadio,
                  yesValue: CamelAntibioticsSenstivityRadio.yes,
                  onChangedYes: (val) => milkerExistCtrl
                      .onChange(val ?? CamelAntibioticsSenstivityRadio.yes),
                  noValue: CamelAntibioticsSenstivityRadio.no,
                  onChangedNo: (val) => milkerExistCtrl
                      .onChange(val ?? CamelAntibioticsSenstivityRadio.no),
                  groupValue: milkerExistCtrl.charcter);
            }),
        const LineWidget(),
        const LabelWidget(label: "Who prescribes the antibiotic?"),
        const CamelAntibioticsDescriptionWidget(),
        const LineWidget(),
        const LabelWidget(label: "Who gives antibiotics to animals?"),
        const CamelAntibioticsHavingWidget(),
        GetBuilder<AntibioticsDateController>(
            init: AntibioticsDateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelWidget(
                      label:
                          "What is the date of the last use of the antibiotic? "),
                  CupertinoButton(
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
                            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: whiteColor, fontSize: 15),
                          )),
                      onPressed: () => dateCtrl.onDateChange(context)),
                ],
              );
            }),
      ],
    );
  }
}
