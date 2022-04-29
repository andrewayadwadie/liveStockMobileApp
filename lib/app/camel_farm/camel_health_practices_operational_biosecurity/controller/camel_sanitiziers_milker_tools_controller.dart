import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSanitizersMilkerToolsController extends GetxController {
  List<String> sanitizersMilkerToolsList = [
    "sanitizers 1",
    "sanitizers 2",
    "sanitizers 3",
  ];

  RxString sanitizersMilkerToolsText = 'What type of sanitizers used to Milker Tools?'.obs;

  RxInt sanitizersMilkerToolsId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sanitizersMilkerToolsId.value = id;
    Navigator.pop(con);

    sanitizersMilkerToolsText.value = sanitizersMilkerToolsList[index];

    update();
  }
}
