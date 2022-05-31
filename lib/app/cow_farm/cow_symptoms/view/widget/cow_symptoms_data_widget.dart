import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_get_symptoms_controller.dart';
import '../../controller/cow_send_symptoms_controller.dart';
import 'cow_symptoms_textfield_widget.dart';
 

 

// ignore: must_be_immutable
class CowsymptomsDataWidget extends StatelessWidget {
  CowsymptomsDataWidget({Key? key}) : super(key: key);

  List<String> symptomsWay = [];
  CowSendsymptomsDataController sendsymptomsDataController =
      Get.put(CowSendsymptomsDataController(), permanent: true);
 List< TextEditingController> textEditCtrl = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.height / 4,
      child: GetBuilder<CowGetSymptomsController>(
          init: CowGetSymptomsController(),
          builder: (typeCtrl) {
            return typeCtrl.loading.value == true
                ? const LoaderWidget()
                : ListView.builder(
                    itemCount: typeCtrl.symptoms.length,
                    itemBuilder: (context, index) {
                      for(int i = 0 ; i <typeCtrl.symptoms.length;i++){
                        textEditCtrl.add(TextEditingController());
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('${typeCtrl.symptoms[index].name}'),
                            leading: Checkbox(
                              value: typeCtrl.choices == []
                                  ? false
                                  : typeCtrl.choices[index],
                              onChanged: (val) =>
                                  typeCtrl.changeCheckBox(val, index),
                            ),
                          ),
                          if (typeCtrl.choices[index] == true)
                            //! modal bottom sheet of immunizaion
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              height: MediaQuery.of(context).size.height / 4.7,
                              child: ListView(
                                children: [
                                  const LabelWidget(
                                      label: "How Many case of this Disease ?"),
                                  CowSymptomsTextFieldWidget(
                                    controller: textEditCtrl[index],
                                      title: "Count of cases",
                                      onNoteChange: (val) {
                                     //   diseaseWay.add( val??"");
                                      }),
                                  GestureDetector(
                                    onTap: () {
                                    
                                  
                                        sendsymptomsDataController.addAnswer(
                                          symptomsId: typeCtrl.symptoms[index].id,
                                          count:int. parse(textEditCtrl[index].text),
                                        );
                                        log("answers : ${sendsymptomsDataController.answers}");
                                    

                                    },
                                    child: Center(
                                        child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              13,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: whiteColor,
                                          )),
                                      child: const AutoSizeText("Add Data",
                                          style: TextStyle(
                                            color: whiteColor,
                                          )),
                                    )),
                                  )
                                ],
                              ),
                            ),
                        ],
                      );
                    });
          }),
    );
  }
}
