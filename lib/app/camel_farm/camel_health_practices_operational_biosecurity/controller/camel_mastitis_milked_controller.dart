import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelMastitisMilkedController extends GetxController {
  List<String> mastitisMilkedList = [
    "With the herd without specifying",
    "before milking the herd",
    "After milking the herd",
  ];

  RxString mastitisMilkedText =
      'When should animals with mastitis be milked?'.obs;

  RxInt mastitisMilkedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    mastitisMilkedId.value = id;
    Navigator.pop(con);

    mastitisMilkedText.value = mastitisMilkedList[index];

    update();
  }
}
