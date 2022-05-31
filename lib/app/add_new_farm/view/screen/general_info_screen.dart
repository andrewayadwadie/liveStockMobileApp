import 'dart:io';

import '../../controller/farm_type_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/controller/image_picker_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../animal_type/view/screen/animal_type_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../home/home_screen.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../controller/activity_type_field_controller.dart';
import '../../controller/area_controller.dart';
import '../../controller/farm_info_form_controller.dart';
import '../../controller/farm_location_controller.dart';
 
import '../../service/send_farm_data.dart';
import '../widgets/new_farm_info_form_widget.dart';

class GeneralInfoScreen extends StatelessWidget {
  GeneralInfoScreen({
    Key? key,
    required this.farmOwnerId,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final int farmOwnerId;
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
                height: MediaQuery.of(context).size.height / 50,
              ),
              const Center(
                child: Text(
                  "Farm Information",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  // height: MediaQuery.of(context).size.height / 1.5,
                  decoration: const BoxDecoration(
                      // border: Border.all(color: redColor),
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              // decoration: BoxDecoration(
                              //     border: Border.all(color: primaryColor),
                              //     color: whiteColor,
                              //     borderRadius: const BorderRadius.only(
                              //         topRight: Radius.circular(20))),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 1.32,
                              child: const NewFarmInfoFormWidget()),
                        ),
                        // <<<<<<<< Submit (Next Buttom) >>>>>>>>>>>>>
                        Align(
                          alignment: Alignment.bottomRight,
                          child: GetBuilder<CurrentLocationController>(
                              init: CurrentLocationController(),
                              builder: (current) {
                                return GetBuilder<FarmLocationController>(
                                    init: FarmLocationController(),
                                    builder: (location) {
                                      return GetBuilder<FarmInfoFormController>(
                                          init: FarmInfoFormController(),
                                          builder: (farmInfoCtrl) {
                                            return GetBuilder<
                                                    ActivityTypeFieldController>(
                                                init:
                                                    ActivityTypeFieldController(),
                                                builder: (activityCtrl) {
                                                  return GetBuilder<
                                                          FarmTypeController>(
                                                      init:
                                                          FarmTypeController(),
                                                      builder: (sizeCtrl) {
                                                        return GetBuilder<
                                                                AreaController>(
                                                            init:
                                                                AreaController(),
                                                            builder:
                                                                (areaCtrl) {
                                                              return GetBuilder<
                                                                      ImagePickerController>(
                                                                  init:
                                                                      ImagePickerController(),
                                                                  builder:
                                                                      (imgCtrl) {
                                                                    return GetBuilder<
                                                                            ClickController>(
                                                                        init:
                                                                            ClickController(),
                                                                        builder:
                                                                            (click) {
                                                                          return InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (_formKey.currentState!.validate()) {
                                                                                _formKey.currentState!.save();

                                                                                if (sizeCtrl.farmsId == 0 || activityCtrl.activityTypeId.value == 0 || areaCtrl.areasId.value == 0 || imgCtrl.image == File("")) {
                                                                                  Get.snackbar(
                                                                                    "Note",
                                                                                    "you must fill all the Farm Data",
                                                                                    backgroundColor: redColor,
                                                                                    colorText: whiteColor,
                                                                                    snackPosition: SnackPosition.TOP,
                                                                                    borderRadius: 20,
                                                                                    margin: const EdgeInsets.all(5),
                                                                                    borderColor: redColor,
                                                                                    borderWidth: 1,
                                                                                  );
                                                                                } else {
                                                                                  location.getLocation(current.lat ?? 0.0, current.long ?? 0.0);
                                                                                  showDialog(context: context, builder: (context) => FutureProgressDialog(SendFarmData.sendNewFarmData(name: farmInfoCtrl.farmName, photo: imgCtrl.image, size: sizeCtrl.farmsText, activityType: activityCtrl.activityTypeText, lat: current.lat ?? 0.0, long: current.long ?? 0.0, areaId: areaCtrl.areasId, farmOwnerId: farmOwnerId, location: "${location.country},${location.city},${location.area}")));
                                                                                  var res = await SendFarmData.sendNewFarmData(name: farmInfoCtrl.farmName, photo: imgCtrl.image, size: sizeCtrl.farmsText, activityType: activityCtrl.activityTypeText, lat: current.lat ?? 0.0, long: current.long ?? 0.0, areaId: areaCtrl.areasId, farmOwnerId: farmOwnerId, location: "${location.country},${location.city},${location.area}");
                                                                                  if (res.runtimeType == double) {
                                                                                    FarmPref.setValue(res.toInt());
                                                                                    Get.offAll(() => const AnimalTypeScreen());
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
                                                                              }
                                                                            },
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              "assets/icons/next_button.svg",
                                                                              width: MediaQuery.of(context).size.width / 11,
                                                                              height: MediaQuery.of(context).size.height / 11,
                                                                            ),
                                                                          );
                                                                        });
                                                                  });
                                                            });
                                                      });
                                                });
                                          });
                                    });
                              }),
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
