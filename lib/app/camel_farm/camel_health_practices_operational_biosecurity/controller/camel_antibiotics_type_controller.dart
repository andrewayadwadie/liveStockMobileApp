import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelAntibioticsTypeController extends GetxController {
  List<String> antibioticsTypeList = [
    "antibiotics type 1 (source1) ",
    "antibiotics type 2  (source2)",
    "antibiotics type 3 (source3) ",
  ];

  RxString antibioticsTypeText = 'What type of antibiotics used?'.obs;

  RxInt antibioticsTypeId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) {
    antibioticsTypeId.value = id;
    Navigator.pop(con);

    antibioticsTypeText.value = antibioticsTypeList[index];

    update();
  }
}
