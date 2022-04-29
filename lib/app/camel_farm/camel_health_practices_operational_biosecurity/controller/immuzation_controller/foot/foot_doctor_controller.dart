import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelFootDoctorController extends GetxController {
  List<String> footDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString footDoctorText = 'Who administers the immunization?'.obs;

  RxInt footDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    footDoctorId.value = id;
    Navigator.pop(con);

    footDoctorText.value = footDoctorList[index];

    update();
  }
}