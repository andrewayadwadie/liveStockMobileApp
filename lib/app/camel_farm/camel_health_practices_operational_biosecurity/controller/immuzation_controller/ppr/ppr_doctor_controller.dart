import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelpprDoctorController extends GetxController {
  List<String> pprDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString pprDoctorText = 'Who administers the immunization?'.obs;

  RxInt pprDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    pprDoctorId.value = id;
    Navigator.pop(con);

    pprDoctorText.value = pprDoctorList[index];

    update();
  }
}