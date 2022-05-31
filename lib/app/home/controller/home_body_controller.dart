import 'dart:developer';

import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../add_farm_owner/view/screen/farm_owner_screen.dart';
import '../../add_new_farm/view/screen/general_info_screen.dart';
import '../../animal_type/view/screen/animal_type_screen.dart';
import '../../camel_farm/add_camel_herd/view/screen/camel_herd_screen.dart';
import '../../camel_farm/camel_diseases/view/screen/camel_diseases_screen.dart';
import '../../camel_farm/camel_feeding/view/screen/camel_feeding_screen.dart';
import '../../camel_farm/camel_health_practices/view/screen/camel_health_practices_screen.dart';
import '../../camel_farm/camel_health_practices_operational_biosecurity/view/screen/camel_operational_biosecurity_screen.dart';
import '../../camel_farm/camel_housing/view/screen/camel_housing_scren.dart';
import '../../camel_farm/camel_immunization_new/view/screen/camel_immunization_new_screen.dart';
import '../../camel_farm/camel_lab_info/view/screen/camel_lab_info_screen.dart';
import '../../camel_farm/camel_milker/view/screen/camel_milker_screen.dart';
import '../../camel_farm/camel_reproduction/view/screen/camel_reproduction_screen.dart';
import '../../camel_farm/camel_symptoms/view/screen/camel_symptoms_screen.dart';
import '../../camel_farm/clinical_examination/view/screen/camel_clinical_examination_screen.dart';
import '../../camel_farm/general_management/view/screen/general_management_screen.dart';
import '../../cow_farm/cow_clinical_examination/view/screen/cow_clinical_examination_screen.dart';
import '../../cow_farm/cow_diseases/view/screen/cow_diseases_screen.dart';
import '../../cow_farm/cow_feeding/view/screen/cow_feeding_screen.dart';
import '../../cow_farm/cow_general_management/view/screen/cow_general_management_screen.dart';
import '../../cow_farm/cow_health_practices/view/screen/cow_health_practices_screen.dart';
import '../../cow_farm/cow_health_practices_operational_biosecurity/view/screen/cow_operational_biosecurity_screen.dart';
import '../../cow_farm/cow_herd/view/screen/cow_herd_screen.dart';
import '../../cow_farm/cow_housing/view/screen/cow_housing_scren.dart';
import '../../cow_farm/cow_immunization_new/view/screen/cow_immunization_new_screen.dart';
import '../../cow_farm/cow_lab_info/view/screen/cow_lab_info_screen.dart';
import '../../cow_farm/cow_milker/view/screen/cow_milker_screen.dart';
import '../../cow_farm/cow_reproduction/view/screen/cow_reproduction_screen.dart';
import '../../cow_farm/cow_symptoms/view/screen/cow_symptoms_screen.dart';
import '../../goat_farm/goat_clinical_examination/view/screen/goat_clinical_examination_screen.dart';
import '../../goat_farm/goat_diseases/view/screen/goat_diseases_screen.dart';
import '../../goat_farm/goat_feeding/view/screen/goat_feeding_screen.dart';
import '../../goat_farm/goat_general_management/view/screen/goat_general_management_screen.dart';
import '../../goat_farm/goat_health_practices/view/screen/goat_health_practices_screen.dart';
import '../../goat_farm/goat_health_practices_operational_biosecurity/view/screen/goat_operational_biosecurity_screen.dart';
import '../../goat_farm/goat_herd/view/screen/goat_herd_screen.dart';
import '../../goat_farm/goat_housing/view/screen/goat_housing_scren.dart';
import '../../goat_farm/goat_immunization_new/view/screen/goat_immunization_new_screen.dart';
import '../../goat_farm/goat_lab_info/view/screen/goat_lab_info_screen.dart';
import '../../goat_farm/goat_milker/view/screen/goat_milker_screen.dart';
import '../../goat_farm/goat_reproduction/view/screen/goat_reproduction_screen.dart';
import '../../goat_farm/goat_symptoms/view/screen/goat_symptoms_screen.dart';
import '../../horse_farm/horse_clinical_examination/view/screen/horse_clinical_examination_screen.dart';
import '../../horse_farm/horse_diseases/view/screen/horse_diseases_screen.dart';
import '../../horse_farm/horse_feeding/view/screen/horse_feeding_screen.dart';
import '../../horse_farm/horse_general_management/view/screen/horse_general_management_screen.dart';
import '../../horse_farm/horse_health_practices/view/screen/horse_health_practices_screen.dart';
import '../../horse_farm/horse_health_practices_operational_biosecurity/view/screen/horse_operational_biosecurity_screen.dart';
import '../../horse_farm/horse_herd/view/screen/horse_herd_screen.dart';
import '../../horse_farm/horse_housing/view/screen/horse_housing_scren.dart';
import '../../horse_farm/horse_immunization_new/view/screen/horse_immunization_new_screen.dart';
import '../../horse_farm/horse_lab_info/view/screen/horse_lab_info_screen.dart';
import '../../horse_farm/horse_milker/view/screen/horse_milker_screen.dart';
import '../../horse_farm/horse_reproduction/view/screen/horse_reproduction_screen.dart';
import '../../horse_farm/horse_symptoms/view/screen/horse_symptoms_screen.dart';
import '../../sheep_farm/sheep_clinical_examination/view/screen/sheep_clinical_examination_screen.dart';
import '../../sheep_farm/sheep_diseases/view/screen/sheep_diseases_screen.dart';
import '../../sheep_farm/sheep_feeding/view/screen/sheep_feeding_screen.dart';
import '../../sheep_farm/sheep_general_management/view/screen/sheep_general_management_screen.dart';
import '../../sheep_farm/sheep_health_practices/view/screen/sheep_health_practices_screen.dart';
import '../../sheep_farm/sheep_health_practices_operational_biosecurity/view/screen/sheep_operational_biosecurity_screen.dart';
import '../../sheep_farm/sheep_herd/view/screen/sheep_herd_screen.dart';
import '../../sheep_farm/sheep_housing/view/screen/sheep_housing_scren.dart';
import '../../sheep_farm/sheep_immunization_new/view/screen/sheep_immunization_new_screen.dart';
import '../../sheep_farm/sheep_lab_info/view/screen/sheep_lab_info_screen.dart';
import '../../sheep_farm/sheep_milker/view/screen/sheep_milker_screen.dart';
import '../../sheep_farm/sheep_reproduction/view/screen/sheep_reproduction_screen.dart';
import '../../sheep_farm/sheep_symptoms/view/screen/sheep_symptoms_screen.dart';
 
class HomeBodyController extends GetxController {
  void routeCheck() {
    log("""
        ${FarmOwnerPref.getOwnerValue()},
        ${FarmPref.getValue()},
        ${FarmAnimalTypePref.getAnimalTypeValue()},
        ${FarmCamelHerdPref.getCamelHerdValue()},
        ${FarmCamelStatusPref.getCamelStatusValue()}
         
        """);
//!horse farm
if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmHorseHerdPref.getHorseHerdValue() != 0) {
      //* genral status
      if (FarmHorseStatusPref.getHorseStatusValue() == 0) {
        Get.offAll(() => HorseGeneralManagementScreen(
              horseHerdId: FarmHorseHerdPref.getHorseHerdValue(),
            ));
      }
      //* housing status
      if (FarmHorseStatusPref.getHorseStatusValue() == 1) {
        Get.offAll(() => HorseHousingScreen());
      }
      //* feeding status
      if (FarmHorseStatusPref.getHorseStatusValue() == 2) {
        Get.offAll(() => HorseFeedingScreen());
      }
      //* reproduction status
      if (FarmHorseStatusPref.getHorseStatusValue() == 3) {
        Get.offAll(() => HorseReproductionScreen());
      }
      //* milker status
      if (FarmHorseStatusPref.getHorseStatusValue() == 4) {
        Get.offAll(() => HorseMilkerScreen());
      }
      //* health status
      if (FarmHorseStatusPref.getHorseStatusValue() == 5) {
        Get.offAll(() => HorseHealthPracticesScreen());
      }
      //* health opertional status
      if (FarmHorseStatusPref.getHorseStatusValue() == 6) {
        Get.offAll(() => HorseHealthPracticesOpertionalBiosecurityScreen());
      }
      //* immunization status
      if (FarmHorseStatusPref.getHorseStatusValue() == 7) {
        Get.offAll(() =>   HorseImmunizationNewScreen());
      }
      //* Clinical status
      if (FarmHorseStatusPref.getHorseStatusValue() == 8) {
        Get.offAll(() => HorseclinicalExaminationScreen());
      }
      if (FarmHorseStatusPref.getHorseStatusValue() == 9) {
        Get.offAll(() => HorseLabInfoScreen());
      }
      if (FarmHorseStatusPref.getHorseStatusValue() == 10) {
        Get.offAll(() =>  HorseDiseasesScreen());
      }
      if (FarmHorseStatusPref.getHorseStatusValue() == 11) {
        Get.offAll(() =>  HorseSymptomsScreen());
      }
    }

//!Goat Status
   else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmGoatHerdPref.getGoatHerdValue() != 0) {
      //* genral status
      if (FarmGoatStatusPref.getGoatStatusValue() == 0) {
        Get.offAll(() => GoatGeneralManagementScreen(
              goatHerdId: FarmGoatHerdPref.getGoatHerdValue(),
            ));
      }
      //* housing status
      if (FarmGoatStatusPref.getGoatStatusValue() == 1) {
        Get.offAll(() => GoatHousingScreen());
      }
      //* feeding status
      if (FarmGoatStatusPref.getGoatStatusValue() == 2) {
        Get.offAll(() => GoatFeedingScreen());
      }
      //* reproduction status
      if (FarmGoatStatusPref.getGoatStatusValue() == 3) {
        Get.offAll(() => GoatReproductionScreen());
      }
      //* milker status
      if (FarmGoatStatusPref.getGoatStatusValue() == 4) {
        Get.offAll(() => GoatMilkerScreen());
      }
      //* health status
      if (FarmGoatStatusPref.getGoatStatusValue() == 5) {
        Get.offAll(() => GoatHealthPracticesScreen());
      }
      //* health opertional status
      if (FarmGoatStatusPref.getGoatStatusValue() == 6) {
        Get.offAll(() => GoatHealthPracticesOpertionalBiosecurityScreen());
      }
      //* immunization status
      if (FarmGoatStatusPref.getGoatStatusValue() == 7) {
        Get.offAll(() =>   GoatImmunizationNewScreen());
      }
      //* Clinical status
      if (FarmGoatStatusPref.getGoatStatusValue() == 8) {
        Get.offAll(() => GoatclinicalExaminationScreen());
      }
      if (FarmGoatStatusPref.getGoatStatusValue() == 9) {
        Get.offAll(() => GoatLabInfoScreen());
      }
      if (FarmGoatStatusPref.getGoatStatusValue() == 10) {
        Get.offAll(() =>  GoatlDiseasesScreen());
      }
      if (FarmGoatStatusPref.getGoatStatusValue() == 11) {
        Get.offAll(() =>  GoatSymptomsScreen());
      }
    }

    //!camel Status
   else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCamelHerdPref.getCamelHerdValue() != 0) {
      //* genral status
      if (FarmCamelStatusPref.getCamelStatusValue() == 0) {
        Get.offAll(() => GeneralManagementScreen(
              camelHerdId: FarmCamelHerdPref.getCamelHerdValue(),
            ));
      }
      //* housing status
      if (FarmCamelStatusPref.getCamelStatusValue() == 1) {
        Get.offAll(() => CamelHousingScreen());
      }
      //* feeding status
      if (FarmCamelStatusPref.getCamelStatusValue() == 2) {
        Get.offAll(() => CamelFeedingScreen());
      }
      //* reproduction status
      if (FarmCamelStatusPref.getCamelStatusValue() == 3) {
        Get.offAll(() => CamelReproductionScreen());
      }
      //* milker status
      if (FarmCamelStatusPref.getCamelStatusValue() == 4) {
        Get.offAll(() => CamelMilkerScreen());
      }
      //* health status
      if (FarmCamelStatusPref.getCamelStatusValue() == 5) {
        Get.offAll(() => CamelHealthPracticesScreen());
      }
      //* health opertional status
      if (FarmCamelStatusPref.getCamelStatusValue() == 6) {
        Get.offAll(() => CamelHealthPracticesOpertionalBiosecurityScreen());
      }
      //* immunization status
      if (FarmCamelStatusPref.getCamelStatusValue() == 7) {
        Get.offAll(() =>   CamelImmunizationNewScreen());
      }
      //* Clinical status
      if (FarmCamelStatusPref.getCamelStatusValue() == 8) {
        Get.offAll(() => CamelclinicalExaminationScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 9) {
        Get.offAll(() => CamelLabInfoScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 10) {
        Get.offAll(() =>  CamelDiseasesScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 11) {
        Get.offAll(() =>  CamelSymptomsScreen());
      }
    }

    //!Cow Status
    else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmCowHerdPref.getCowHerdValue() != 0) {
      //* genral status
      if (FarmCowStatusPref.getCowStatusValue() == 0) {
        Get.offAll(() => CowGeneralManagementScreen( ));
      }
      //* housing status
      if (FarmCowStatusPref.getCowStatusValue() == 1) {
        Get.offAll(() => CowHousingScreen());
      }
      //* feeding status
      if (FarmCowStatusPref.getCowStatusValue() == 2) {
        Get.offAll(() => CowFeedingScreen());
      }
      //* reproduction status
      if (FarmCowStatusPref.getCowStatusValue() == 3) {
        Get.offAll(() => CowReproductionScreen());
      }
      //* milker status
      if (FarmCowStatusPref.getCowStatusValue() == 4) {
        Get.offAll(() => CowMilkerScreen());
      }
      //* health status
      if (FarmCowStatusPref.getCowStatusValue() == 5) {
        Get.offAll(() => CowHealthPracticesScreen());
      }
      //* health opertional status
      if (FarmCowStatusPref.getCowStatusValue() == 6) {
        Get.offAll(() => CowHealthPracticesOpertionalBiosecurityScreen());
      }
      //* immunization status
      if (FarmCowStatusPref.getCowStatusValue() == 7) {
        Get.offAll(() =>   CowImmunizationNewScreen());
      }
      //* Clinical status
      if (FarmCowStatusPref.getCowStatusValue() == 8) {
        Get.offAll(() => CowclinicalExaminationScreen());
      }
       if (FarmCamelStatusPref.getCamelStatusValue() == 9) {
        Get.offAll(() => CowLabInfoScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 10) {
        Get.offAll(() =>  CowDiseasesScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 11) {
        Get.offAll(() =>  CowSymptomsScreen());
      }
    }
    //!Sheep Status
    else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmSheepHerdPref.getSheepHerdValue() != 0) {
      //* genral status
      if (FarmSheepStatusPref.getSheepStatusValue() == 0) {
        Get.offAll(() => SheepGeneralManagementScreen());
      }
      //* housing status
      if (FarmSheepStatusPref.getSheepStatusValue() == 1) {
        Get.offAll(() => SheepHousingScreen());
      }
      //* feeding status
      if (FarmSheepStatusPref.getSheepStatusValue() == 2) {
        Get.offAll(() => SheepFeedingScreen());
      }
      //* reproduction status
      if (FarmSheepStatusPref.getSheepStatusValue() == 3) {
        Get.offAll(() => SheepReproductionScreen());
      }
      //* milker status
      if (FarmSheepStatusPref.getSheepStatusValue() == 4) {
        Get.offAll(() => SheepMilkerScreen());
      }
      //* health status
      if (FarmSheepStatusPref.getSheepStatusValue() == 5) {
        Get.offAll(() => SheepHealthPracticesScreen());
      }
      //* health opertional status
      if (FarmSheepStatusPref.getSheepStatusValue() == 6) {
        Get.offAll(() => SheepHealthPracticesOpertionalBiosecurityScreen());
      }
      //* immunization status
      if (FarmSheepStatusPref.getSheepStatusValue() == 7) {
        Get.offAll(() =>   SheepImmunizationNewScreen());
      }
      //* Clinical status
      if (FarmSheepStatusPref.getSheepStatusValue() == 8) {
        Get.offAll(() => SheepclinicalExaminationScreen());
      }

       if (FarmCamelStatusPref.getCamelStatusValue() == 9) {
        Get.offAll(() => SheepLabInfoScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 10) {
        Get.offAll(() =>  SheepDiseasesScreen());
      }
      if (FarmCamelStatusPref.getCamelStatusValue() == 11) {
        Get.offAll(() =>  SheepSymptomsScreen());
      }
    } 
    
    else if ((FarmOwnerPref.getOwnerValue() != 0 &&
            FarmPref.getValue() != 0 &&
            FarmAnimalTypePref.getAnimalTypeValue() != 0) &&
        (FarmCamelHerdPref.getCamelHerdValue() != 0 ||
            FarmCowHerdPref.getCowHerdValue() != 0 ||
            FarmSheepHerdPref.getSheepHerdValue() != 0)) {
      if (FarmCamelHerdPref.getCamelHerdValue() != 0) {
        Get.offAll(() => GeneralManagementScreen(
            camelHerdId: FarmCamelHerdPref.getCamelHerdValue()));
      }
      if (FarmCowHerdPref.getCowHerdValue() != 0) {
        Get.offAll(() => Get.offAll(() => CowGeneralManagementScreen()));
      }
      if (FarmSheepHerdPref.getSheepHerdValue() != 0) {
        Get.offAll(() => Get.offAll(() => SheepGeneralManagementScreen()));
      }
    } else if (FarmOwnerPref.getOwnerValue() != 0 &&
        FarmPref.getValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0 &&
        FarmAnimalTypePref.getAnimalTypeValue() != 0) {
      
      if (FarmAnimalTypePref.getAnimalTypeValue() == 1) {
        Get.offAll(() => CowHerdScreen());
      }
      if (FarmAnimalTypePref.getAnimalTypeValue() == 2) {
        Get.offAll(() => CamelHerdScreen());
      }
      if (FarmAnimalTypePref.getAnimalTypeValue() == 3) {
        Get.offAll(() => SheepHerdScreen());
      }
      if (FarmAnimalTypePref.getAnimalTypeValue() == 4) {
        Get.offAll(() => GoatHerdScreen());
      }
      if (FarmAnimalTypePref.getAnimalTypeValue() == 5) {
        Get.offAll(() => HorseHerdScreen());
      }




    } else if (FarmOwnerPref.getOwnerValue() != 0 && FarmPref.getValue() != 0) {
      Get.offAll(() => const AnimalTypeScreen());
    } else if (FarmOwnerPref.getOwnerValue() != 0) {
      Get.offAll(
          () => GeneralInfoScreen(farmOwnerId: FarmOwnerPref.getOwnerValue()));
    } else {
      Get.to(() => FarmOwnerScreen());
    }
  }
}
