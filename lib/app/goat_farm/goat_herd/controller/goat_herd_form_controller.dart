import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatHerdFormController extends GetxController {
 String numberOfAnimals = "0";
  String numberOfCases = "0";
  String numberOfAdults = "0";
  String numberOfVirginity = "0";
  String numberOfAged = "0";
  String numberOfInfant = "0";
  String numberOfAblaction = "0";
  String numberOfMales = "0";
  String numberOfFemales = "0";
  String numberOfDeaths = "0";
  String numberOfSuddenDeath = "0";
  String note = "";
  TextEditingController numberOfAnimalsCtrl = TextEditingController();
  TextEditingController numberOfCasesCtrl = TextEditingController();
  TextEditingController numberOfAdultsCtrl = TextEditingController();
  TextEditingController numberOfVirginityCtrl = TextEditingController();
  TextEditingController numberOfAgedCtrl = TextEditingController();
  TextEditingController numberOfInfantCtrl = TextEditingController();
  TextEditingController numberOfAblactionCtrl = TextEditingController();
  TextEditingController numberOfMalesCtrl = TextEditingController();
  TextEditingController numberOfFemalesCtrl = TextEditingController();
  TextEditingController numberOfDeathsCtrl = TextEditingController();
  TextEditingController numberOfSuddenDeathCtrl = TextEditingController();
  TextEditingController noteCtrl = TextEditingController();

  @override
  void onClose() {
    numberOfAnimalsCtrl.dispose();
    numberOfCasesCtrl.dispose();
    numberOfAdultsCtrl.dispose();
    numberOfVirginityCtrl.dispose();
    numberOfAgedCtrl.dispose();
    numberOfInfantCtrl.dispose();
    numberOfAblactionCtrl.dispose();
    numberOfMalesCtrl.dispose();
    numberOfFemalesCtrl.dispose();
    numberOfDeathsCtrl.dispose();
    numberOfSuddenDeathCtrl.dispose();
    noteCtrl.dispose();
    super.onClose();
  }

  void changenumberOfAnimals(String val) {
    if (val == "") {
      numberOfAnimals = "0";

      update();
    } else {
      numberOfAnimals = val;
      numberOfAnimalsCtrl.text = val;
      numberOfAnimalsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAnimalsCtrl.text.length));

      update();
    }
  }

  void changenumberOfCases(String val) {
    if (val == "") {
      numberOfCases = "0";
      update();
    } else {
      numberOfCases = val;
      numberOfCasesCtrl.text = val;
      numberOfCasesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfCasesCtrl.text.length));
      update();
    }
  }

  void changenumberOfAdults(String val) {
    if (val == "") {
      numberOfAdults = "0";
      update();
    } else {
      numberOfAdults = val;
      numberOfAdultsCtrl.text = val;
      numberOfAdultsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAdultsCtrl.text.length));
      update();
    }
  }

  void changenumberOfVirginity(String val) {
    if (val == "") {
      numberOfVirginity = "0";
      update();
    } else {
      numberOfVirginity = val;
      numberOfVirginityCtrl.text = val;
      numberOfVirginityCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfVirginityCtrl.text.length));
      update();
    }
  }

  void changenumberOfAged(String val) {
    if (val == "") {
      numberOfAged = "0";
      update();
    } else {
      numberOfAged = val;
      numberOfAgedCtrl.text = val;
      numberOfAgedCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAgedCtrl.text.length));
      update();
    }
  }

  void changenumberOfInfant(String val) {
    if (val == "") {
      numberOfInfant = "0";
      update();
    } else {
      numberOfInfant = val;
      numberOfInfantCtrl.text = val;
      numberOfInfantCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfInfantCtrl.text.length));
      update();
    }
  }

  void changenumberOfAblaction(String val) {
    if (val == "") {
      numberOfAblaction = "0";
      update();
    } else {
      numberOfAblaction = val;
      numberOfAblactionCtrl.text = val;
      numberOfAblactionCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAblactionCtrl.text.length));
      update();
    }
  }

  void changenumberOfMales(String val) {
    if (val == "") {
      numberOfMales = "0";
      update();
    } else {
      numberOfMales = val;
      numberOfMalesCtrl.text = val;
      numberOfMalesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfMalesCtrl.text.length));
      update();
    }
  }

  void changenumberOfFemales(String val) {
    if (val == "") {
      numberOfFemales = "0";

      update();
    } else {
      numberOfFemales = val;
      numberOfFemalesCtrl.text = val;
      numberOfFemalesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfFemalesCtrl.text.length));
      update();
    }
  }

  void changenumberOfDeaths(String val) {
    if (val == "") {
      numberOfDeaths = "0";
      update();
    } else {
      numberOfDeaths = val;
      numberOfDeathsCtrl.text = val;
      numberOfDeathsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfDeathsCtrl.text.length));
      update();
    }
  }

  void changenumberOfSuddenDeath(String val) {
    if (val == "") {
      numberOfSuddenDeath = "0";
      update();
    } else {
      numberOfSuddenDeath = val;
      numberOfSuddenDeathCtrl.text = val;
      numberOfSuddenDeathCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfSuddenDeathCtrl.text.length));
      update();
    }
  }

  void changenote(String val) {
    if (val == "") {
      note = "";
      update();
    } else {
      note = val;
      noteCtrl.text = val;
      noteCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: noteCtrl.text.length));
      update();
    }
  }



}
