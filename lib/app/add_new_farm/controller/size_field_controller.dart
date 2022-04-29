import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeFieldController extends GetxController {
  List<String> sizeList = [
    "Small (from 1 to 50 camel)",
    //"medium",
    "large (more than 50 camel)",
  ];

  RxString sizeText = 'Size'.obs;

  RxInt sizeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    sizeId.value = id;
    Navigator.pop(con);

    sizeText.value = sizeList[index];

    update();
  }
}
