import 'package:get/get.dart';

enum CamelInflammationSiteRadio { udder, nipples }

class CamelInflammationSiteRadioController extends GetxController {
  CamelInflammationSiteRadio charcter = CamelInflammationSiteRadio.udder;

  void onChange(CamelInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
