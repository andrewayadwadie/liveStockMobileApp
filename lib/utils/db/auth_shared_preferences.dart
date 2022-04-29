import 'package:shared_preferences/shared_preferences.dart';

class TokenPref {
  static SharedPreferences? _loginPreferences;
  static const _token = 'usertoken';

  static Future init() async {
    _loginPreferences = await SharedPreferences.getInstance();
  }

/*------------------------------- Token---------------------------- */
  static Future setTokenValue(String value) async {
    await _loginPreferences!.setString(_token, value);
  }

  static String getTokenValue() {
    return _loginPreferences!.getString(_token) ?? '';
  }

  static Future clearToken() async {
    await _loginPreferences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class ExpireDatePref {
  static SharedPreferences? _expireDatePreferences;
  static const _expireDate = 'expiredate';

  static Future init() async {
    _expireDatePreferences = await SharedPreferences.getInstance();
  }

/*------------------------------- Expire Date---------------------------- */
  static Future setExpireDateValue(String value) async {
    await _expireDatePreferences!.setString(_expireDate, value);
  }

  static String getExpireDateValue() {
    return _expireDatePreferences!.getString(_expireDate)!;
  }

  static Future clearExpireDate() async {
    await _expireDatePreferences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmOwnerPref {
  static SharedPreferences? _framOwnerPrefrences;
  static const _owner = 'owner';

  static Future init() async {
    _framOwnerPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- Owner---------------------------- */
  static Future setOwnerValue(int value) async {
    await _framOwnerPrefrences!.setInt(_owner, value);
  }

  static int getOwnerValue() {
    return _framOwnerPrefrences!.getInt(_owner) ?? 0;
  }

  static Future clearOwner() async {
    await _framOwnerPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}
class FarmOwnerNamePref {
  static SharedPreferences? _framOwnerNamePrefrences;
  static const _ownerName = 'OwnerName';

  static Future init() async {
    _framOwnerNamePrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- OwnerName---------------------------- */
  static Future setOwnerNameValue(String value) async {
    await _framOwnerNamePrefrences!.setString(_ownerName, value);
  }

  static String getOwnerNameValue() {
    return _framOwnerNamePrefrences!.getString(_ownerName) ??"";
  }

  static Future clearOwnerName() async {
    await _framOwnerNamePrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmPref {
  static SharedPreferences? _framPrefrences;
  static const _ = 'farm';

  static Future init() async {
    _framPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- ---------------------------- */
  static Future setValue(int value) async {
    await _framPrefrences!.setInt(_, value);
  }

  static int getValue() {
    return _framPrefrences!.getInt(_) ?? 0;
  }

  static Future clear() async {
    await _framPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmAnimalTypePref {
  static SharedPreferences? _framAnimalTypePrefrences;
  static const _animalType = 'animalType';

  static Future init() async {
    _framAnimalTypePrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- AnimalType---------------------------- */
  static Future setAnimalTypeValue(int value) async {
    await _framAnimalTypePrefrences!.setInt(_animalType, value);
  }

  static int getAnimalTypeValue() {
    return _framAnimalTypePrefrences!.getInt(_animalType) ?? 0;
  }

  static Future clearAnimalType() async {
    await _framAnimalTypePrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmCamelHerdPref {
  static SharedPreferences? _framcamelHerdPrefrences;
  static const _camelHerd = 'camelHerd';

  static Future init() async {
    _framcamelHerdPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelHerd---------------------------- */
  static Future setCamelHerdValue(int value) async {
    await _framcamelHerdPrefrences!.setInt(_camelHerd, value);
  }

  static int getCamelHerdValue() {
    return _framcamelHerdPrefrences!.getInt(_camelHerd) ?? 0;
  }

  static Future clearCamelHerd() async {
    await _framcamelHerdPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}


class FarmCamelGeneralPref {
  static SharedPreferences? _framcamelGeneralPrefrences;
  static const _camelGeneral = 'camelGeneral';

  static Future init() async {
    _framcamelGeneralPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelGeneral---------------------------- */
  static Future setCamelGeneralValue(int value) async {
    await _framcamelGeneralPrefrences!.setInt(_camelGeneral, value);
  }

  static int getCamelGeneralValue() {
    return _framcamelGeneralPrefrences!.getInt(_camelGeneral) ?? 0;
  }

  static Future clearCamelGeneral() async {
    await _framcamelGeneralPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}


class FarmCamelHousingPref {
  static SharedPreferences? _framcamelHousingPrefrences;
  static const _camelHousing = 'camelHousing';

  static Future init() async {
    _framcamelHousingPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelHousing---------------------------- */
  static Future setCamelHousingValue(int value) async {
    await _framcamelHousingPrefrences!.setInt(_camelHousing, value);
  }

  static int getCamelHousingValue() {
    return _framcamelHousingPrefrences!.getInt(_camelHousing) ?? 0;
  }

  static Future clearCamelHousing() async {
    await _framcamelHousingPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmCamelFeedingPref {
  static SharedPreferences? _framcamelFeedingPrefrences;
  static const _camelFeeding = 'camelFeeding';

  static Future init() async {
    _framcamelFeedingPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelFeeding---------------------------- */
  static Future setCamelFeedingValue(int value) async {
    await _framcamelFeedingPrefrences!.setInt(_camelFeeding, value);
  }

  static int getCamelFeedingValue() {
    return _framcamelFeedingPrefrences!.getInt(_camelFeeding) ?? 0;
  }

  static Future clearCamelFeeding() async {
    await _framcamelFeedingPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}
class FarmCamelReproductionPref {
  static SharedPreferences? _framcamelReproductionPrefrences;
  static const _camelReproduction = 'camelReproduction';

  static Future init() async {
    _framcamelReproductionPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelReproduction---------------------------- */
  static Future setCamelReproductionValue(int value) async {
    await _framcamelReproductionPrefrences!.setInt(_camelReproduction, value);
  }

  static int getCamelReproductionValue() {
    return _framcamelReproductionPrefrences!.getInt(_camelReproduction) ?? 0;
  }

  static Future clearCamelReproduction() async {
    await _framcamelReproductionPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}

class FarmCamelMilkerPref {
  static SharedPreferences? _framcamelMilkerPrefrences;
  static const _camelMilker = 'camelMilker';

  static Future init() async {
    _framcamelMilkerPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelMilker---------------------------- */
  static Future setCamelMilkerValue(int value) async {
    await _framcamelMilkerPrefrences!.setInt(_camelMilker, value);
  }

  static int getCamelMilkerValue() {
    return _framcamelMilkerPrefrences!.getInt(_camelMilker) ?? 0;
  }

  static Future clearCamelMilker() async {
    await _framcamelMilkerPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}
class FarmCamelHealthPracticesPref {
  static SharedPreferences? _framcamelHealthPracticesPrefrences;
  static const _camelHealthPractices = 'camelHealthPractices';

  static Future init() async {
    _framcamelHealthPracticesPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- camelHealthPractices---------------------------- */
  static Future setCamelHealthPracticesValue(int value) async {
    await _framcamelHealthPracticesPrefrences!.setInt(_camelHealthPractices, value);
  }

  static int getCamelHealthPracticesValue() {
    return _framcamelHealthPracticesPrefrences!.getInt(_camelHealthPractices) ?? 0;
  }

  static Future clearCamelHealthPractices() async {
    await _framcamelHealthPracticesPrefrences!.clear();
  }

/*---------------------------------------------------------------------- */

}