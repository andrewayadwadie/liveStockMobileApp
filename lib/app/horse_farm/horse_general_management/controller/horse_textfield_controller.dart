import 'package:get/get.dart';

class HorseTextFieldController extends GetxController{

  String workersNo="";
  String detectAnimal="";
  String animalCount="";


  void onChangeWorkersNo(String value){
    workersNo = value;
    update();
  }

  void onChangeDetectAnimal(String value){
    detectAnimal = value;
    update();
  }

  void onChangeAnimalCount(String value){
    animalCount = value;
    update();
  }


}