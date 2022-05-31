import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepSampleTypeController extends GetxController {
  List<String> sampleTypeList = [
    "blood",
    "pee",
  ];

  RxString sampleTypeText = 'sample Type'.obs;

  RxInt sampleTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sampleTypeId.value = id;
    Navigator.pop(con);

    sampleTypeText.value = sampleTypeList[index];

    update();
  }
}
