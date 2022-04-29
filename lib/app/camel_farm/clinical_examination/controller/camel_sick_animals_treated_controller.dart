import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelSickAnimalsTreatedController extends GetxController {
  List<String> sickAnimalsTreatedList = [
    "self treatment",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString sickAnimalsTreatedText = 'How are sick animals treated?'.obs;

  RxInt sickAnimalsTreatedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    sickAnimalsTreatedId.value = id;
    Navigator.pop(con);

    sickAnimalsTreatedText.value = sickAnimalsTreatedList[index];

    update();
  }
}
