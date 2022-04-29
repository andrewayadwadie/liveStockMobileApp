import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelImmuzatioDoctorController extends GetxController {
  List<String> immuzatioDoctorList = [
    "subjective",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString immuzatioDoctorText = 'Who administers the immunization?'.obs;

  RxInt immuzatioDoctorId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    immuzatioDoctorId.value = id;
    Navigator.pop(con);

    immuzatioDoctorText.value = immuzatioDoctorList[index];

    update();
  }
}
