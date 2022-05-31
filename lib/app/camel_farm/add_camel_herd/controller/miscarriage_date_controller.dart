


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelMiscarriageDateController extends GetxController {

  List<String> miscarriageDateList = ["First three months", "Six months","Last three months"];

  RxString miscarriageDateText = 'Miscarriage Date'.obs;

  RxInt miscarriageId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    miscarriageId.value = id;
    Navigator.pop(con);

    miscarriageDateText.value = miscarriageDateList[index];

    update();
  }
}