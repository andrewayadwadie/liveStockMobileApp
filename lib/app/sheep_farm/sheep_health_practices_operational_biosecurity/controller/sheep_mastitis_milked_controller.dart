import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepMastitisMilkedController extends GetxController {
  List<String> mastitisMilkedList = [
    "With the herd without specifying",//? push in api id 195
    "before milking the herd",//? push in api id 196
    "After milking the herd",//? push in api id 197
  ];

  RxString mastitisMilkedText =
      'When should animals with mastitis be milked?'.obs;

  RxInt mastitisMilkedId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    mastitisMilkedId.value = id+1;
    Navigator.pop(con);

    mastitisMilkedText.value = mastitisMilkedList[index];

    update();
  }
}
