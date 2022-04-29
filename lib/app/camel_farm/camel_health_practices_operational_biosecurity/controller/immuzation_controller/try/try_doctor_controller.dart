import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CameltryDoctorController extends GetxController {
  List<String> tryDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString tryDoctorText = 'Who administers the immunization?'.obs;

  RxInt tryDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    tryDoctorId.value = id;
    Navigator.pop(con);

    tryDoctorText.value = tryDoctorList[index];

    update();
  }
}