import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelTimesBuyingNewanimalController extends GetxController {
    List<String> timesNewList = [
    "when necessary", //? push in api object with id 36
    "Throughout the year", //? push in api object with id 37
    "seasonal", //? push in api object with id 38
    "other",     //? push in api object with id 39
    
  ];

  RxString timesNewText = 'What are the times to buy animals?'.obs;

  RxInt timesNewId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    timesNewId.value = id;
    Navigator.pop(con);

    timesNewText.value = timesNewList[index];

    update();
  }
}