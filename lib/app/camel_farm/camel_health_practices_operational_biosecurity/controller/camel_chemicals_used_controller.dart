import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelChemicalsUsedController extends GetxController {
  List<String> chemicalsUsedList = [
    "Chemical 1",
    "Chemical 2",
    "Chemical 3",
  ];

  RxString chemicalsUsedText = 'Select the chemicals used'.obs;

  RxInt chemicalsUsedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    chemicalsUsedId.value = id;
    Navigator.pop(con);

    chemicalsUsedText.value = chemicalsUsedList[index];

    update();
  }
}
