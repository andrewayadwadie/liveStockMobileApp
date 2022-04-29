import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelsmallBoxDoctorController extends GetxController {
  List<String> smallBoxDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString smallBoxDoctorText = 'Who administers the immunization?'.obs;

  RxInt smallBoxDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    smallBoxDoctorId.value = id;
    Navigator.pop(con);

    smallBoxDoctorText.value = smallBoxDoctorList[index];

    update();
  }
}