import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_symptoms_checkbox_manual_controller.dart';
import 'camel_mastitis_form_widget.dart';
import 'camel_miscarriage_form_widget.dart';
import 'camel_symptoms_types_textfield_widget.dart';

class CamelSymptomsCheckboxManualWidget extends StatelessWidget {
  const CamelSymptomsCheckboxManualWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelSymptomsCheckboxManualController>(
        init: CamelSymptomsCheckboxManualController(),
        builder: (symptomsCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Fever'),
                leading: Checkbox(
                  value: symptomsCtrl.fever,
                  onChanged: (val) => symptomsCtrl.feveronChange(val),
                ),
              ),
              if (symptomsCtrl.fever == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Limp'),
                leading: Checkbox(
                  value: symptomsCtrl.limp,
                  onChanged: (val) => symptomsCtrl.limponChange(val),
                ),
              ),
              if (symptomsCtrl.limp == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Cough'),
                leading: Checkbox(
                  value: symptomsCtrl.cough,
                  onChanged: (val) => symptomsCtrl.coughonChange(val),
                ),
              ),
              if (symptomsCtrl.cough == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Breathing Difficulties'),
                leading: Checkbox(
                  value: symptomsCtrl.breathingDifficulties,
                  onChanged: (val) =>
                      symptomsCtrl.breathingDifficultiesonChange(val),
                ),
              ),
              if (symptomsCtrl.breathingDifficulties == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('diarrhea'),
                leading: Checkbox(
                  value: symptomsCtrl.diarrhea,
                  onChanged: (val) => symptomsCtrl.diarrheaonChange(val),
                ),
              ),
              if (symptomsCtrl.diarrhea == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Nasal Secretions'),
                leading: Checkbox(
                  value: symptomsCtrl.nasalSecretions,
                  onChanged: (val) => symptomsCtrl.nasalSecretionsonChange(val),
                ),
              ),
              if (symptomsCtrl.nasalSecretions == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Vaginal Secretions'),
                leading: Checkbox(
                  value: symptomsCtrl.vaginalSecretions,
                  onChanged: (val) =>
                      symptomsCtrl.vaginalSecretionsonChange(val),
                ),
              ),
              if (symptomsCtrl.vaginalSecretions == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Secretions From Eye'),
                leading: Checkbox(
                  value: symptomsCtrl.secretionsFromEye,
                  onChanged: (val) =>
                      symptomsCtrl.secretionsFromEyeonChange(val),
                ),
              ),
              if (symptomsCtrl.secretionsFromEye == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('drooling'),
                leading: Checkbox(
                  value: symptomsCtrl.drooling,
                  onChanged: (val) => symptomsCtrl.droolingonChange(val),
                ),
              ),
              if (symptomsCtrl.drooling == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Inflammation In Tongue'),
                leading: Checkbox(
                  value: symptomsCtrl.inflammationInTongue,
                  onChanged: (val) =>
                      symptomsCtrl.inflammationInTongueonChange(val),
                ),
              ),
              if (symptomsCtrl.inflammationInTongue == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('anorexia'),
                leading: Checkbox(
                  value: symptomsCtrl.anorexia,
                  onChanged: (val) => symptomsCtrl.anorexiaonChange(val),
                ),
              ),
              if (symptomsCtrl.anorexia == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Nervous Symptoms'),
                leading: Checkbox(
                  value: symptomsCtrl.nervousSymptoms,
                  onChanged: (val) => symptomsCtrl.nervousSymptomsonChange(val),
                ),
              ),
              if (symptomsCtrl.nervousSymptoms == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('skinLesions'),
                leading: Checkbox(
                  value: symptomsCtrl.skinLesions,
                  onChanged: (val) => symptomsCtrl.skinLesionsonChange(val),
                ),
              ),
              if (symptomsCtrl.skinLesions == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Weight Loss'),
                leading: Checkbox(
                  value: symptomsCtrl.weightLoss,
                  onChanged: (val) => symptomsCtrl.weightLossonChange(val),
                ),
              ),
              if (symptomsCtrl.weightLoss == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('Decreased Milk Production'),
                leading: Checkbox(
                  value: symptomsCtrl.decreasedMilkProduction,
                  onChanged: (val) =>
                      symptomsCtrl.decreasedMilkProductiononChange(val),
                ),
              ),
              if (symptomsCtrl.decreasedMilkProduction == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('lethargy'),
                leading: Checkbox(
                  value: symptomsCtrl.lethargy,
                  onChanged: (val) => symptomsCtrl.lethargyonChange(val),
                ),
              ),
              if (symptomsCtrl.lethargy == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LabelWidget(label: "How many cases?"),
                    CamelSymptomsTextFieldWidget(
                        title: "cases", onNoteChange: (val) {})
                  ],
                ),
              ListTile(
                title: const Text('mastitis'),
                leading: Checkbox(
                  value: symptomsCtrl.mastitis,
                  onChanged: (val) {
                    symptomsCtrl.mastitisonChange(val);
                    if (val == true) {
                      showModalBottomSheet(
                          context: context,
                          isDismissible: false,
                          enableDrag: false,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 1.05,
                              color: Colors.white,
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.97,
                                        child: const CamelMastitisFormWidget(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        child: const Text(
                                          'data confirmation',
                                          style: TextStyle(
                                            color: whiteColor,
                                          ),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
              ListTile(
                title: const Text('miscarriage'),
                leading: Checkbox(
                  value: symptomsCtrl.miscarriage,
                  onChanged: (val) {
                    symptomsCtrl.miscarriageonChange(val);
                    if (val == true) {
                      showModalBottomSheet(
                          context: context,
                          isDismissible: false,
                          enableDrag: false,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height / 1.05,
                              color: Colors.white,
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.97,
                                        child:
                                            const CamelMiscarriageFormWidget(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        child: const Text(
                                          'data confirmation',
                                          style: TextStyle(
                                            color: whiteColor,
                                          ),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            ],
          );
        });
  }
}
