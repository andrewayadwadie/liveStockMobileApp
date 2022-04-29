import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelAntibioticsHavingController extends GetxController {
  List<String> antibioticsHavingList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString antibioticsHavingText =
      'Who gives antibiotics to animals?'.obs;

  RxInt antibioticsHavingId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsHavingId.value = id;
    Navigator.pop(con);

    antibioticsHavingText.value = antibioticsHavingList[index];

    update();
  }
}
