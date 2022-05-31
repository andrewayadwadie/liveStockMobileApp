import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepDifficultChildbirthController extends GetxController {
  List<String> difficultChildbirthList = [
    "self fertilizing",
    "private vet",
    "Government veterinarian",
    "veterinary technician",
  ];

  RxString difficultChildbirthText = 'who is giving birth?'.obs;

  RxInt difficultChildbirthId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    difficultChildbirthId.value = id+1;
    Navigator.pop(con);

    difficultChildbirthText.value = difficultChildbirthList[index];

    update();
  }
}
