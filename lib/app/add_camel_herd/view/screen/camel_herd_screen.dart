import 'dart:developer';

import '../../../shared_widgets/custom_appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../add_new_farm/controller/activity_type_field_controller.dart';
import '../../../add_new_farm/controller/edu_sys_controller.dart';
import '../../../add_new_farm/controller/size_field_controller.dart';
import '../../../auth/login_screen.dart';
import '../../../camel_farm/general_management/view/screen/general_management_screen.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../home/home_screen.dart';
import '../../controller/camel_dynasty_controller.dart';
import '../../controller/camel_herd_dynasty_controller.dart';
import '../../controller/camel_herd_form_controller.dart';
import '../../services/camel_send_herd_data.dart';
import '../widgets/camel_herd_form_widget.dart';

class CamelHerdScreen extends StatelessWidget {
  CamelHerdScreen({
    Key? key,
    required this.animalTypeId,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final int animalTypeId;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: offwhiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          leading: IconButton(
            onPressed: () => Get.offAll(HomeScreen()),
            icon: const Icon(Icons.home),
            color: primaryColor,
          ),
          title: const AppBarTitle()
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.173,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 800,
                    ),
                    const Center(
                      child: Text(
                        "Camel Herd Information",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 1.4,
                      decoration: const BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      child: Stack(
                        children: [
                          //!formContent
                          Positioned(
                            top: MediaQuery.of(context).size.height / 50,
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.17,
                                height:
                                    MediaQuery.of(context).size.height / 1.5,
                                child: const CamelHerdFormWidget()),
                          ),
                          //!Submit (Next Buttom)
                          GetBuilder<CurrentLocationController>(
                              init: CurrentLocationController(),
                              builder: (location) {
                                return Align(
                                  alignment: Alignment.bottomRight,
                                  child: GetBuilder<CamelHerdFormController>(
                                      init: CamelHerdFormController(),
                                      builder: (herdFormCtrl) {
                                        return GetBuilder<
                                                CamelDynastyController>(
                                            init: CamelDynastyController(),
                                            builder: (dynastyCtrl) {
                                              return GetBuilder<
                                                      SizeFieldController>(
                                                  init: SizeFieldController(),
                                                  builder: (sizeCtrl) {
                                                    return GetBuilder<
                                                            ActivityTypeFieldController>(
                                                        init:
                                                            ActivityTypeFieldController(),
                                                        builder:
                                                            (activityCtrl) {
                                                          return GetBuilder<
                                                                  EduSysController>(
                                                              init: EduSysController(
                                                                  camelHerdId:
                                                                      1),
                                                              builder:
                                                                  (eduSysCtrl) {
                                                                return GetBuilder<
                                                                        DateController>(
                                                                    init:
                                                                        DateController(),
                                                                    builder:
                                                                        (dateCtrl) {
                                                                      return GetBuilder<
                                                                              CamelHerdDynastyController>(
                                                                          init: CamelHerdDynastyController(
                                                                              camelHerdId:
                                                                                  2),
                                                                          builder:
                                                                              (dynastyCtrl) {
                                                                            return InkWell(
                                                                              onTap: () async {
                                                                                if (_formKey.currentState!.validate()) {
                                                                                  _formKey.currentState!.save();

                                                                                  var res = await SendCamelHerdData.sendCamelHerdData(numberOfAnimals: int.parse(herdFormCtrl.numberOfAnimals), numberOfCases: int.parse(herdFormCtrl.numberOfCases), numberOfAdults: int.parse(herdFormCtrl.numberOfAdults), numberOfVirginity: int.parse(herdFormCtrl.numberOfVirginity), numberOfAged: int.parse(herdFormCtrl.numberOfAged), numberOfInfant: int.parse(herdFormCtrl.numberOfInfant), numberOfAblaction: int.parse(herdFormCtrl.numberOfAblaction), numberOfMales: int.parse(herdFormCtrl.numberOfMales), numberOfFemales: int.parse(herdFormCtrl.numberOfFemales), numberOfDeaths: int.parse(herdFormCtrl.numberOfDeaths), numberOfSuddenDeath: int.parse(herdFormCtrl.numberOfSuddenDeath), farmId: FarmPref.getValue(), eductionSystemId: eduSysCtrl.educationId, animalStrainId: dynastyCtrl.dynastyId, note: herdFormCtrl.numberOfAnimals, size: sizeCtrl.sizeText.value, activityType: activityCtrl.activityTypeText.value, lat: " ${location.currentLat ?? 0.0}", long: "${location.currentLong ?? 0.0}", dateOfEpidemiologicalSurvey: "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");

                                                                                  if (res.runtimeType == double) {
                                                                                    FarmCamelHerdPref.setCamelHerdValue(res.toInt());
                                                                                    log("camel herd response in local storage double ${FarmCamelHerdPref.getCamelHerdValue()}");
                                                                                    Get.offAll(() => GeneralManagementScreen(camelHerdId: FarmCamelHerdPref.getCamelHerdValue()));
                                                                                  } else if (res == 401) {
                                                                                    Get.offAll(() => const LoginScreen());
                                                                                  } else if (res == 500 || res == 400) {
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
                                                                                  }
                                                                                }
                                                                              },
                                                                              child: SizedBox(
                                                                                child: SvgPicture.asset(
                                                                                  "assets/icons/nextandsave.svg",
                                                                                  width: MediaQuery.of(context).size.width / 10,
                                                                                  height: MediaQuery.of(context).size.height / 10,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          });
                                                                    });
                                                              });
                                                        });
                                                  });
                                            });
                                      }),
                                );
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
