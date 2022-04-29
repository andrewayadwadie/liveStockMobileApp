import 'package:get/get.dart';

class CamelHerdFormController extends GetxController {
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

  void changenumberOfAnimals(String val) {
    if (val == "") {
      numberOfAnimals = "0";
      update();
    } else {
      numberOfAnimals = val;
      update();
    }
  }

  void changenumberOfCases(String val) {
    if (val == "") {
      numberOfCases = "0";
      update();
    } else {
       numberOfCases = val;
    update();
    }
 
  }

  void changenumberOfAdults(String val) {
    if (val == "") {
      numberOfAdults = "0";
      update();
    } else {
     numberOfAdults = val;
    update();
    }
  
  }

  void changenumberOfVirginity(String val) {
     if (val == "") {
      numberOfVirginity = "0";
      update();
    } else {
     numberOfVirginity = val;
    update();
    }
 
  }

  void changenumberOfAged(String val) {
     if (val == "") {
      numberOfAged  = "0";
      update();
    } else {
     numberOfAged  = val;
    update();
    }
 
  }

  void changenumberOfInfant(String val) {
     if (val == "") {
      numberOfInfant = "0";
      update();
    } else {
     numberOfInfant = val;
    update();
    }
 
  }

  void changenumberOfAblaction(String val) {
     if (val == "") {
      numberOfAblaction = "0";
      update();
    } else {
     numberOfAblaction = val;
    update();
    }
 
  }

  void changenumberOfMales(String val) {
      if (val == "") {
      numberOfMales = "0";
      update();
    } else {
     numberOfMales = val;
    update();
    }
 
  }

  void changenumberOfFemales(String val) {
        if (val == "") {
      numberOfFemales = "0";
      update();
    } else {
     numberOfFemales = val;
    update();
    }
  
  }

  void changenumberOfDeaths(String val) {
        if (val == "") {
      numberOfDeaths = "0";
      update();
    } else {
     numberOfDeaths = val;
    update();
    }
 
  }

  void changenumberOfSuddenDeath(String val) {
        if (val == "") {
      numberOfSuddenDeath = "0";
      update();
    } else {
     numberOfSuddenDeath = val;
    update();
    }
 
  }

  void changenote(String val) {
    
    note = val;
    update();
  }
}
