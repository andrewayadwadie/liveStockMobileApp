import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../add_camel_herd/view/screen/camel_herd_screen.dart';
import '../../add_farm_owner/view/screen/farm_owner_screen.dart';
import '../../add_new_farm/view/screen/general_info_screen.dart';
import '../../animal_type/view/screen/animal_type_screen.dart';
import '../../camel_farm/camel_feeding/view/screen/camel_feeding_screen.dart';
import '../../camel_farm/camel_health_practices/view/screen/camel_health_practices_screen.dart';
import '../../camel_farm/camel_health_practices_operational_biosecurity/view/screen/camel_operational_biosecurity_screen.dart';
import '../../camel_farm/camel_housing/view/screen/camel_housing_scren.dart';
import '../../camel_farm/camel_milker/view/screen/camel_milker_screen.dart';
import '../../camel_farm/camel_reproduction/view/screen/camel_reproduction_screen.dart';
import '../../camel_farm/general_management/view/screen/general_management_screen.dart';

class HomeBodyController extends GetxController {
  void routeCheck() {
    if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0 &&
        FarmCamelHousingPref.getCamelHousingValue() != 0 &&
        FarmCamelFeedingPref.getCamelFeedingValue() != 0 &&
        FarmCamelReproductionPref.getCamelReproductionValue() != 0 &&
        FarmCamelMilkerPref.getCamelMilkerValue() != 0 &&
        FarmCamelHealthPracticesPref.getCamelHealthPracticesValue() != 0) {
      Get.offAll(() => CamelHealthPracticesOpertionalBiosecurityScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0 &&
        FarmCamelHousingPref.getCamelHousingValue() != 0 &&
        FarmCamelFeedingPref.getCamelFeedingValue() != 0 &&
        FarmCamelReproductionPref.getCamelReproductionValue() != 0 &&
        FarmCamelMilkerPref.getCamelMilkerValue() != 0) {
      Get.offAll(() => CamelHealthPracticesScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0 &&
        FarmCamelHousingPref.getCamelHousingValue() != 0 &&
        FarmCamelFeedingPref.getCamelFeedingValue() != 0 &&
        FarmCamelReproductionPref.getCamelReproductionValue() != 0) {
      Get.offAll(() => CamelMilkerScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0 &&
        FarmCamelHousingPref.getCamelHousingValue() != 0 &&
        FarmCamelFeedingPref.getCamelFeedingValue() != 0) {
      Get.offAll(() => CamelReproductionScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0 &&
        FarmCamelHousingPref.getCamelHousingValue() != 0) {
      Get.offAll(() => CamelFeedingScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0 &&
        FarmCamelGeneralPref.getCamelGeneralValue() != 0) {
      Get.offAll(() => CamelHousingScreen(
          generalId: FarmCamelGeneralPref.getCamelGeneralValue()));
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0) {
      Get.offAll(() => GeneralManagementScreen(
          camelHerdId: FarmCamelHerdPref.getCamelHerdValue()));
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0) {
      Get.offAll(() => CamelHerdScreen(
          animalTypeId: FarmAnimalTypePref.getAnimalTypeValue()));
    } else if (FarmOwnerPref.getOwnerValue() != 0 && FarmPref.getValue() != 0) {
      Get.offAll(() => AnimalTypeScreen(farmId: FarmPref.getValue()));
    } else if (FarmOwnerPref.getOwnerValue() != 0) {
      Get.offAll(
          () => GeneralInfoScreen(farmOwnerId: FarmOwnerPref.getOwnerValue()));
    } else {
      Get.to(() => FarmOwnerScreen());
    }
  }
/*

  void routeCheckk() {
    if (FarmOwnerPref.getOwnerValue() != 0) {
      Get.offAll(
          () => GeneralInfoScreen(farmOwnerId: FarmOwnerPref.getOwnerValue()));
    }

    if (FarmPref.getValue() != 0) {
      Get.offAll(() => AnimalTypeScreen(farmId: FarmPref.getValue()));
    }
    
    if (FarmAnimalTypePref.getAnimalTypeValue() != 0) {
      Get.offAll(() => CamelHerdScreen(
          animalTypeId: FarmAnimalTypePref.getAnimalTypeValue()));
    }
    if ( FarmCamelHerdPref.getCamelHerdValue() != 0) {
     Get.offAll(() => GeneralManagementScreen(
          camelHerdId: FarmCamelHerdPref.getCamelHerdValue()));
    }
    if ( FarmCamelGeneralPref.getCamelGeneralValue() != 0) {
      Get.offAll(() => CamelHousingScreen(
          generalId: FarmCamelGeneralPref.getCamelGeneralValue()));
    }



  }
  */
}
