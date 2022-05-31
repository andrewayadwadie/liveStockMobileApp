import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatSourcesBuyingNewanimalController extends GetxController {
    List<String> sourceNewList = [
    "another farm", //? push in api object with id 40
    "Markets", //? push in api object with id 41
    "importation", //? push in api object with id 42
    "other",       //? push in api object with id 43
  ];

  RxString sourceNewText = 'What are the sources of animal purchase?'.obs;

  RxInt sourceNewId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) { 
    sourceNewId.value = id+1;
    Navigator.pop(con);

    sourceNewText.value = sourceNewList[index];

    update();
  }
}