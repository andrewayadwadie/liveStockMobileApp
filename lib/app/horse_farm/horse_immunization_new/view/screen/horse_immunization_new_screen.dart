import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 import 'package:get/get.dart';

import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../auth/login_screen.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../horse_clinical_examination/view/screen/horse_clinical_examination_screen.dart';
import '../../controller/horse_immunization_way_text_controller.dart';
import '../../controller/horse_send_new_immunization_data_controller.dart';
import '../../services/horse_send_new_immunization_data_service.dart';
import '../widgets/horse_immunization_new_widget.dart';

// ignore: must_be_immutable
class HorseImmunizationNewScreen extends StatelessWidget {
  HorseImmunizationNewScreen({Key? key}) : super(key: key);
  HorseImmunizationWayTextController wayCtrl =
      Get.put(HorseImmunizationWayTextController());
  final _formKey = GlobalKey<FormState>();
  HorseSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(HorseSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
          appBar: AppBar(
              backgroundColor: whiteColor,
              leading: IconButton(
                onPressed: () => Get.offAll(HomeScreen()),
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
                  "Immunization of Horse farm",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Expanded(
                child: Container(
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
                              height: MediaQuery.of(context).size.height / 1.5,
                              child: HorseImmunizationNewFormWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                
                                var res =
                                    await SendHorseSendNewImmunizationService
                                        .sendHorseSendNewImmunizationService(
                                            data:
                                                sendNewImmunizationDataController
                                                    .answers);
                                if (res == 200) {
                                  await FarmHorseStatusPref.setHorseStatusValue(
                                      8);
                                  Get.offAll(
                                      () => HorseclinicalExaminationScreen());
                                } else if (res == 401) {
                                  sendNewImmunizationDataController.answers
                                      .clear();
                                  Get.offAll(() => const LoginScreen());
                                } else if (res == 500 || res == 400) {
                                  sendNewImmunizationDataController.answers
                                      .clear();
                                  Get.snackbar(
                                    'Error',
                                    'Server Error $res',
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                    icon: const Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                  );
                                } else if (res.runtimeType == String) {
                                  sendNewImmunizationDataController.answers
                                      .clear();
                                  Get.snackbar(
                                    'Error',
                                    ' $res',
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                    icon: const Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                  );
                                }
                              }
                            },
                            child: SizedBox(
                              child: SvgPicture.asset(
                                "assets/icons/next_button.svg",
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
