import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:get/get.dart';

import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../animal_type/view/screen/animal_type_screen.dart';
import '../../../../auth/login_screen.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../controller/horse_send_symptoms_controller.dart';
import '../../service/horse_send_symptoms_service.dart';
import '../widget/horse_symptoms_form_widget.dart';

// ignore: must_be_immutable
class HorseSymptomsScreen extends StatelessWidget {
  HorseSymptomsScreen({Key? key}) : super(key: key);
  HorseSendsymptomsDataController symptomsDataCtrl =
      Get.put(HorseSendsymptomsDataController());
  final _formKey = GlobalKey<FormState>();

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
                  "Horse farm Symptoms",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
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
                              child: const HorseSymptomsFormWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) => FutureProgressDialog(
                                      HorseSendSymptomsService
                                          .horseSendSymptomsService(
                                              data: symptomsDataCtrl.answers)));
                  
                              var res = await HorseSendSymptomsService
                                  .horseSendSymptomsService(
                                      data: symptomsDataCtrl.answers);
                  
                              if (res == 200) {
                                await FarmHorseStatusPref.setHorseStatusValue(
                                    12);
                                Get.defaultDialog(
                                  title: "Alert",
                                  content: const Text(
                                      "Do You Want to Add Another Herd ?"),
                                  actions: [
                                    InkWell(
                                      onTap: () {
                                        FarmHorseHerdPref.clearHorseHerd();
                                        FarmCowHerdPref.clearCowHerd();
                                        FarmSheepHerdPref.clearSheepHerd();
                                        FarmHorseStatusPref.clearHorseStatus();
                                        FarmCowStatusPref.clearCowStatus();
                                        FarmSheepStatusPref.clearSheepStatus();
                                        Get.offAll(
                                            () => const AnimalTypeScreen());
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(10),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            "OK",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        FarmOwnerPref.clearOwner();
                                        FarmPref.clear();
                                        FarmAnimalTypePref.clearAnimalType();
                                        FarmHorseHerdPref.clearHorseHerd();
                                        FarmCowHerdPref.clearCowHerd();
                                        FarmSheepHerdPref.clearSheepHerd();
                                        FarmHorseStatusPref.clearHorseStatus();
                                        FarmCowStatusPref.clearCowStatus();
                                        FarmSheepStatusPref.clearSheepStatus();
                                        Get.offAll(() => HomeScreen());
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(10),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.8,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Text(
                                            "No, finish",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                  ],
                                );
                              } else if (res == 401) {
                                symptomsDataCtrl.answers.clear();
                                Get.offAll(() => const LoginScreen());
                              } else if (res == 500 || res == 400) {
                                symptomsDataCtrl.answers.clear();
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
                                symptomsDataCtrl.answers.clear();
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
                  
                              //    Get.offAll(() => const HorseSymptomsScreen());
                            },
                            child: SizedBox(
                              child: SvgPicture.asset(
                                "assets/icons/finish.svg",
                                width: MediaQuery.of(context).size.width / 10,
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                        )
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
