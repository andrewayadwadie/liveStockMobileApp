import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelAntibioticsDescriptionController extends GetxController {
  List<String> antibioticsDescriptionList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString antibioticsDescriptionText =
      'Who prescribes the antibiotic?'.obs;

  RxInt antibioticsDescriptionId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsDescriptionId.value = id;
    Navigator.pop(con);

    antibioticsDescriptionText.value = antibioticsDescriptionList[index];

    update();
  }
}
