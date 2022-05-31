import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:get/get.dart';

import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../auth/login_screen.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../sheep_symptoms/view/screen/sheep_symptoms_screen.dart';
import '../../controller/sheep_send_disease_controller.dart';
import '../../services/sheep_send_disease_service.dart';
import '../widgets/sheep_disease_form_widget.dart';

// ignore: must_be_immutable
class SheepDiseasesScreen extends StatelessWidget {
  SheepDiseasesScreen({Key? key}) : super(key: key);
  SheepSendDiseaseDataController diseaseDataCtrl =
      Get.put(SheepSendDiseaseDataController());
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
                  "Sheep farm diseases",
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
                              child: const SheepDiseaseFormWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) => FutureProgressDialog(
                                      SheepSendDiseaseService
                                          .sheepSendDiseaseService(
                                              data: diseaseDataCtrl.answers)));
                              var res = await SheepSendDiseaseService
                                  .sheepSendDiseaseService(
                                      data: diseaseDataCtrl.answers);
                  
                              if (res == 200) {
                                await FarmSheepStatusPref.setSheepStatusValue(
                                    11);
                                Get.offAll(() => SheepSymptomsScreen());
                              } else if (res == 401) {
                                diseaseDataCtrl.answers.clear();
                                Get.offAll(() => const LoginScreen());
                              } else if (res == 500 || res == 400) {
                                diseaseDataCtrl.answers.clear();
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
                                diseaseDataCtrl.answers.clear();
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
                  
                              //    Get.offAll(() => const SheepSymptomsScreen());
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
