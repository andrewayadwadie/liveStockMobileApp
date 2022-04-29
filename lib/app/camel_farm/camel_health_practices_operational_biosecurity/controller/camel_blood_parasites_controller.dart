import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelBloodParasitesController extends GetxController {
  List<String> bloodParasitesList = [
    "medicine 1",
    "medicine 2",
    "medicine 3",
  ];

  RxString bloodParasitesText = 'medicines used to prevent blood parasites'.obs;

  RxInt bloodParasitesId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    bloodParasitesId.value = id;
    Navigator.pop(con);

    bloodParasitesText.value = bloodParasitesList[index];

    update();
  }
}
