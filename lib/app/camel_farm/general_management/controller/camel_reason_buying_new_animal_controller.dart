import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelreasonBuyingNewanimalController extends GetxController {
    List<String> buyNewList = [
    "reason 1", //? push in api object with id 33
    "reason 2", //? push in api object with id 34
    "reason 3", //? push in api object with id 35
    
  ];

  RxString buyNewText = 'reason to buy New animal'.obs;

  RxInt buyNewId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    buyNewId.value = id;
    Navigator.pop(con);

    buyNewText.value = buyNewList[index];

    update();
  }
}