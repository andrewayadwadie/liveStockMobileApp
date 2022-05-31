import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelMiscarriageTimeController extends GetxController {
  List<String> miscarriageTimeList = [
    " first third ",
    " second third",
    "third third"
  ];

  RxString miscarriageTimeText = 'Miscarriage Time '.obs;

  RxInt miscarriageTimeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    miscarriageTimeId.value = id+1;
    Navigator.pop(con);

    miscarriageTimeText.value = miscarriageTimeList[index];

    update();
  }
}
