import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/cow_symptoms_service.dart';

 
 
class CowGetSymptomsController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getsymptoms(animalType: 1);
  }

  List<dynamic> symptoms = [].obs;
  List<dynamic> choices = [].obs;

  void changeCheckBox(bool? val, int index) {
    choices[index] = val ?? false;

    update();
  }

  RxBool loading = true.obs;

  RxString symptomsText = 'symptoms type'.obs;
  RxInt symptomsId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    symptomsId.value = id;
    Navigator.pop(con);
    symptomsText.value = symptoms[index].name;
    update();
  }

  dynamic getsymptoms({required int animalType}) {
    CowSymptomsService.getSymptoms(animalType).then((value) {
      if (value.runtimeType == List) {
        symptoms = value;
        loading.value = false;
        update();
        for (var i = 0; i < value.length; i++) {
          choices.add(false);
        }
      } else {
        symptomsText.value = 'No symptoms';
        symptomsId.value = 0;
        symptoms = [];
        log("message: $value");
        update();
      }
    });
    // }
    return symptoms;
  }
}
