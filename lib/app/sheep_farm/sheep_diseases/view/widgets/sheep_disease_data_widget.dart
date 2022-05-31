import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_get_disease_controller.dart';
import '../../controller/sheep_send_disease_controller.dart';
import 'sheep_disease_textfield_widget.dart';
 
 
 
// ignore: must_be_immutable
class SheepDiseaseDataWidget extends StatelessWidget {
  SheepDiseaseDataWidget({Key? key}) : super(key: key);

  List<String> diseaseWay = [];
  SheepSendDiseaseDataController sendDiseaseDataController =
      Get.put(SheepSendDiseaseDataController(), permanent: true);
 List< TextEditingController> textEditCtrl = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.height / 4,
      child: GetBuilder<SheepGetDiseaseController>(
          init: SheepGetDiseaseController(),
          builder: (typeCtrl) {
            return typeCtrl.loading.value == true
                ? const LoaderWidget()
                : ListView.builder(
                    itemCount: typeCtrl.disease.length,
                    itemBuilder: (context, index) {
                      for(int i = 0 ; i <typeCtrl.disease.length;i++){
                        textEditCtrl.add(TextEditingController());
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('${typeCtrl.disease[index].name}'),
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
                                  SheepDiseaseTextFieldWidget(
                                    controller: textEditCtrl[index],
                                      title: "Count of cases",
                                      onNoteChange: (val) {
                                     //   diseaseWay.add( val??"");
                                      }),
                                  GestureDetector(
                                    onTap: () {
                                    
                                  
                                        sendDiseaseDataController.addAnswer(
                                          diseaseId: typeCtrl.disease[index].id,
                                          count:int. parse(textEditCtrl[index].text),
                                        );
                                        log("answers : ${sendDiseaseDataController.answers}");
                                    

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
