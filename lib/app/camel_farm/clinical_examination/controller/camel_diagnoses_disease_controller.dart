import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelDiagnosesDiseaseController extends GetxController {
  List<String> diagnosesDiseaseList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString diagnosesDiseaseText = 'Who diagnoses disease states?'.obs;

  RxInt diagnosesDiseaseId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    diagnosesDiseaseId.value = id+1;
    Navigator.pop(con);

    diagnosesDiseaseText.value = diagnosesDiseaseList[index];

    update();
  }
}
