import 'package:get/get.dart';
 

class CamelImmunizationProgramRadioController extends GetxController {
  List<dynamic> charcter = [];

  void onChange(dynamic value,int index) {
    charcter[index] = value;
    update();
  }
}
