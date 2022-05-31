import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityTypeFieldController extends GetxController {
  List<String> activityTypeList = ["racing", "meat production", ];

  RxString activityTypeText = 'Farm Activity Type'.obs;

  RxInt activityTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    activityTypeId.value = id+1;
    Navigator.pop(con);

    activityTypeText.value = activityTypeList[index];

    update();
  }
}
