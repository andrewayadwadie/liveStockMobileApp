import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FarmTypeController extends GetxController {
  List<dynamic> farms = ["small", "medium", "large"];

  String farmsText = 'choose Farm Size';

  int farmsId = 0;

  void onTapSelected(BuildContext con, int id, int index) {
    farmsId = id;
    Navigator.pop(con);

    farmsText = farms[index];

    update();
  }
}
