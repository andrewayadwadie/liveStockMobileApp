import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../utils/style.dart';
import '../../../../../shared_widgets/label_widget.dart';
import '../../../controller/immuzation_controller/foot/foot_date_controller.dart';
import '../../../controller/immuzation_controller/foot/foot_program_controller.dart';
import '../camel_operational_radio_widget.dart';
import '../camel_operational_textfield_widget.dart';
import 'camel_foot_doctor_widget.dart';

class CamelFootWidget extends StatelessWidget {
  const CamelFootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWidget(label: "How to give each immunization?"),
        CamelOperationalTextFieldWidget(
            title: "immunization way", onNoteChange: (val) {}),
        const LabelWidget(
            label: "Is the full immunization program implemented?"),
        GetBuilder<CamelFootProgramRadioController>(
            init: CamelFootProgramRadioController(),
            builder: (ctrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelFootProgramRadio,
                  yesValue: CamelFootProgramRadio.yes,
                  onChangedYes: (val) =>
                      ctrl.onChange(val ?? CamelFootProgramRadio.yes),
                  noValue: CamelFootProgramRadio.no,
                  onChangedNo: (val) =>
                      ctrl.onChange(val ?? CamelFootProgramRadio.no),
                  groupValue: ctrl.charcter);
            }),
        GetBuilder<FootDateController>(
            init: FootDateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelWidget(
                      label: "What is the date of last immunization? "),
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
        const LabelWidget(label: "Who administers the immunization?"),
        const CamelFootDoctorWidget()
      ],
    );
  }
}
