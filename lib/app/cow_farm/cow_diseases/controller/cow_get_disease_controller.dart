import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/cow_disease_service.dart';

 
 
class CowGetDiseaseController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getDisease(animalType: 1);
  }

  List<dynamic> disease = [].obs;
  List<dynamic> choices = [].obs;

  void changeCheckBox(bool? val, int index) {
    choices[index] = val ?? false;

    update();
  }

  RxBool loading = true.obs;

  RxString diseaseText = 'disease type'.obs;
  RxInt diseaseId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    diseaseId.value = id;
    Navigator.pop(con);
    diseaseText.value = disease[index].name;
    update();
  }

  dynamic getDisease({required int animalType}) {
    CowDiseaseService.getDisease(animalType).then((value) {
      if (value.runtimeType == List) {
        disease = value;
        loading.value = false;
        update();
        for (var i = 0; i < value.length; i++) {
          choices.add(false);
        }
      } else {
        diseaseText.value = 'No disease';
        diseaseId.value = 0;
        disease = [];
        log("message: $value");
        update();
      }
    });
    // }
    return disease;
  }
}
