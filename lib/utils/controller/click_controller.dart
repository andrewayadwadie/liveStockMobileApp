import 'package:get/get.dart';

class OwnerClickController extends GetxController {
  bool clicked = false;

  void changeClick() {
    clicked = !clicked;
    update();
  }
}

class FarmClickController extends GetxController {
  bool clicked = false;

  void changeClick() {
    clicked = !clicked;
    update();
  }
}

class CamelHerdClickController extends GetxController {
  bool clicked = false;

  void changeClick() {
    clicked = !clicked;
    update();
  }
}
