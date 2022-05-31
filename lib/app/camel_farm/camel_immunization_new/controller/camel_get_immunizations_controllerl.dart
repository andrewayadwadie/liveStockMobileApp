import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/camel_immunization_service.dart';

class CamelGetImmunizationsController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getImmunization(animalType: 2);
  }

  List<dynamic> immunization = [].obs;
  List<dynamic> choices = [].obs;

  void changeCheckBox(bool? val, int index) {
    choices[index] = val ?? false;

    update();
  }

    RxBool  loading = true.obs;

  RxString immunizationText = 'immunization type'.obs;
  RxInt immunizationId = 0.obs;

  void onTapSelected(BuildContext con, int id, index) async {
    immunizationId.value = id;
    Navigator.pop(con);
    immunizationText.value = immunization[index].name;
    update();
  }

   
  dynamic getImmunization({required int animalType}) {
    CamelImmunizationService.getImmunization(animalType).then((value) {
      if (value.runtimeType == List) {
        immunization = value;
         loading.value = false;
        update();
        for (var i = 0; i < value.length; i++) {
          choices.add(false);
        }
      } else {
        immunizationText.value = 'No Immunization';
        immunizationId.value = 0;
        immunization = [];
        log("message: $value");
        update();
      }
    });
    // }
    return immunization;
  }
}
