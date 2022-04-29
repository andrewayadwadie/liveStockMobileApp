import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CameliPRDoctorController extends GetxController {
  List<String> iPRDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString iPRDoctorText = 'Who administers the immunization?'.obs;

  RxInt iPRDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    iPRDoctorId.value = id;
    Navigator.pop(con);

    iPRDoctorText.value = iPRDoctorList[index];

    update();
  }
}