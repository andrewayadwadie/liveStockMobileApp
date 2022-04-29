import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelriftDoctorController extends GetxController {
  List<String> riftDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString riftDoctorText = 'Who administers the immunization?'.obs;

  RxInt riftDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    riftDoctorId.value = id;
    Navigator.pop(con);

    riftDoctorText.value = riftDoctorList[index];

    update();
  }
}