import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelCoronaDoctorController extends GetxController {
  List<String> coronaDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString coronaDoctorText = 'Who administers the immunization?'.obs;

  RxInt coronaDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    coronaDoctorId.value = id;
    Navigator.pop(con);

    coronaDoctorText.value = coronaDoctorList[index];

    update();
  }
}