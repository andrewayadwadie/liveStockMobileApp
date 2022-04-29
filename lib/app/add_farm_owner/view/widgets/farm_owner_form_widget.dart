import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../add_new_farm/view/screen/general_info_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/farm_owner_form_controller.dart';
import '../../services/send_data_service.dart';

class FarmOwnerFormWidget extends StatelessWidget {
  const FarmOwnerFormWidget({
    Key? key,
    required this.farmOwnerKey,
  }) : super(key: key);
  final GlobalKey<FormState> farmOwnerKey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FarmOwnerFormController>(
        init: FarmOwnerFormController(),
        builder: (ctrl) {
          return Form(
              key: farmOwnerKey,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.42,
                    child: ListView(
                      //    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!name
                        const LabelWidget(label: "name : "),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'name'.tr,
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.name = val ?? "";
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter farm owner name ';
                              } else if (value.runtimeType == int) {
                                return 'please enter farm owner name with text value  ';
                              } else if (value.length > 30) {
                                return 'sorry name must be less than 30 characters  ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!phone
                        const LabelWidget(label: "phone Number : "),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Phone Number',
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.phone = int.parse(val ?? "0");
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter farm owner phone number ';
                              }
                              //  else if (value.runtimeType == String) {
                              //   return 'phone can not be text value  ';
                              // }
                              else if (value.length > 12) {
                                return 'sorry phone number must be 11 number ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!email
                        const LabelWidget(label: "email : "),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'email',
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.email = val ?? "";
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter farm owner E-mail';
                              } else if (value.length > 30) {
                                return 'sorry email must be less than 30 characters  ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!address
                        const LabelWidget(label: "address : "),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Address',
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.address = val ?? "";
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter farm owner Address ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!identification Number
                        const LabelWidget(label: "identification Number : "),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            onSaved: (val) {
                              ctrl.id = int.parse(val ?? "0");
                            },
                            validator: (value) {
                              // if (value.runtimeType == String) {
                              //   return 'identification number can not be text value  ';
                              // }
                              // else
                              if (value!.length > 14) {
                                return 'sorry identification number must be 14 number ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //*space
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        ),
                      ],
                    ),
                  ),
                  //!Next & Save Button
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GetBuilder<ClickController>(
                        init: ClickController(),
                        builder: (click) {
                          return InkWell(
                            onTap: () async {
                              if (farmOwnerKey.currentState!.validate()) {
                                farmOwnerKey.currentState!.save();
                                log("next button clicked");
                                if (click.clicked == false) {
                                  var res = await SendOwnerData.sendOwnerData(
                                      name: ctrl.name ?? "",
                                      phone: ctrl.phone ?? 0,
                                      email: ctrl.email ?? "",
                                      address: ctrl.address ?? "",
                                      id: ctrl.id ?? 0);
                                  if (res.runtimeType == double) {
                                    FarmOwnerPref.setOwnerValue(res.toInt());
                                    log(" farm id = ${FarmOwnerPref.getOwnerValue()}");
                                    FarmOwnerNamePref.setOwnerNameValue(
                                        ctrl.name ?? "");

                                    Get.to(() => GeneralInfoScreen(
                                        farmOwnerId:
                                            FarmOwnerPref.getOwnerValue()));
                                  } else if (res == 401) {
                                    Get.offAll(const LoginScreen());
                                  } else if (res == 500) {
                                    Get.snackbar(
                                      'Error',
                                      'Server Error',
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white,
                                      icon: const Icon(
                                        Icons.error,
                                        color: Colors.white,
                                      ),
                                    );
                                    click.changeClick();
                                  }

                                  //! error
                                  else if (res.runtimeType == String) {
                                    Get.snackbar(
                                      'Error',
                                      '$res',
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white,
                                      icon: const Icon(
                                        Icons.error,
                                        color: Colors.white,
                                      ),
                                    );
                                    click.changeClick();
                                  }
                                }
                              }
                            },
                            child: SizedBox(
                              child: click.clicked == false
                                  ? SvgPicture.asset(
                                      "assets/icons/next_button.svg",
                                      width: MediaQuery.of(context).size.width /
                                          12,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                    )
                                  : SvgPicture.asset(
                                      "assets/icons/next_grey.svg",
                                      width: MediaQuery.of(context).size.width /
                                          12,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                    ),
                            ),
                          );
                        }),
                  ),
                ],
              ));
        });
  }
}
