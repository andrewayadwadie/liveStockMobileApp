import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/current_location_controller.dart';
import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../controller/camel_clinical_examination_send_data_controller.dart';
import '../widgets/camel_clinical_examination_widget.dart';

// ignore: must_be_immutable
class CamelclinicalExaminationScreen extends StatelessWidget {
  CamelclinicalExaminationScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  CamelclinicalExaminationSendDataController sendDataCtrl =
      Get.put(CamelclinicalExaminationSendDataController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
          appBar: AppBar(
              backgroundColor: whiteColor,
              leading: IconButton(
                onPressed: () => Get.offAll(()=>HomeScreen()),
                icon: const Icon(Icons.home),
                color: primaryColor,
              ),
              title: const AppBarTitle()),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const Center(
                child: Text(
                  "Camel Clinical Examination",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 1.3,
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                child: Form(
                  key: _formKey,
                  child: Stack(
                    children: [
                      //!formContent
                      Positioned(
                        top: MediaQuery.of(context).size.height / 50,
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.17,
                            height:
                                MediaQuery.of(context).size.height / 1.5,
                            child: CamelclinicalExaminationWidget()),
                      ),
                      //!Submit (Next Buttom)
                      GetBuilder<CurrentLocationController>(
                          init: CurrentLocationController(),
                          builder: (location) {
                            return Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    sendDataCtrl.fillAnswerListWithData();
                                    sendDataCtrl.sendData();
                                  }
                                },
                                child: SizedBox(
                                  child: SvgPicture.asset(
                                    "assets/icons/next_button.svg",
                                    width:
                                        MediaQuery.of(context).size.width /
                                            10,
                                    height:
                                        MediaQuery.of(context).size.height /
                                            10,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
