import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSanitizersUsedController extends GetxController {
  List<String> sanitizersUsedList = [
    "sanitizers 1",
    "sanitizers 2",
    "sanitizers 3",
  ];

  RxString sanitizersUsedText = 'What type of sanitizers used?'.obs;

  RxInt sanitizersUsedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sanitizersUsedId.value = id;
    Navigator.pop(con);

    sanitizersUsedText.value = sanitizersUsedList[index];

    update();
  }
}
