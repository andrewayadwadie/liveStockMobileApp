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
    await _loginPreferences!.remove(_token);
  }
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

  static Future clearOwner( ) async {
    //await _framOwnerPrefrences!.clear();
    await _framOwnerPrefrences!.remove(_owner);
  }
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
    return _framOwnerNamePrefrences!.getString(_ownerName) ?? "";
  }

  static Future clearOwnerName() async {
    await _framOwnerNamePrefrences!.remove(_ownerName);
  }
}

class FarmPref {
  static SharedPreferences? _framPrefrences;
  static const _farmkey = 'farm';

  static Future init() async {
    _framPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- ---------------------------- */
  static Future setValue(int value) async {
    await _framPrefrences!.setInt(_farmkey, value);
  }

  static int getValue() {
    return _framPrefrences!.getInt(_farmkey) ?? 0;
  }

  static Future clear() async {
    await _framPrefrences!.remove(_farmkey);
  }
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
    await _framAnimalTypePrefrences!.remove(_animalType);
  }
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
    await _framcamelHerdPrefrences!.remove(_camelHerd);
  }
}

class FarmCowHerdPref {
  static SharedPreferences? _framCowHerdPrefrences;
  static const _cowHerd = 'CowHerd';

  static Future init() async {
    _framCowHerdPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- CowHerd---------------------------- */
  static Future setCowHerdValue(int value) async {
    await _framCowHerdPrefrences!.setInt(_cowHerd, value);
  }

  static int getCowHerdValue() {
    return _framCowHerdPrefrences!.getInt(_cowHerd) ?? 0;
  }

  static Future clearCowHerd() async {
    await _framCowHerdPrefrences!.remove(_cowHerd);
  }
}

class FarmSheepHerdPref {
  static SharedPreferences? _framSheepHerdPrefrences;
  static const _sheepHerd = 'SheepHerd';

  static Future init() async {
    _framSheepHerdPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- SheepHerd---------------------------- */
  static Future setSheepHerdValue(int value) async {
    await _framSheepHerdPrefrences!.setInt(_sheepHerd, value);
  }

  static int getSheepHerdValue() {
    return _framSheepHerdPrefrences!.getInt(_sheepHerd) ?? 0;
  }

  static Future clearSheepHerd() async {
    await _framSheepHerdPrefrences!.remove(_sheepHerd);
  }
}

class FarmGoatHerdPref {
  static SharedPreferences? _framGoatHerdPrefrences;
  static const _goatHerd = 'GoatHerd';

  static Future init() async {
    _framGoatHerdPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- GoatHerd---------------------------- */
  static Future setGoatHerdValue(int value) async {
    await _framGoatHerdPrefrences!.setInt(_goatHerd, value);
  }

  static int getGoatHerdValue() {
    return _framGoatHerdPrefrences!.getInt(_goatHerd) ?? 0;
  }

  static Future clearGoatHerd() async {
    await _framGoatHerdPrefrences!.remove(_goatHerd);
  }
}
class FarmHorseHerdPref {
  static SharedPreferences? _framHorseHerdPrefrences;
  static const _horseHerd = 'HorseHerd';

  static Future init() async {
    _framHorseHerdPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- HorseHerd---------------------------- */
  static Future setHorseHerdValue(int value) async {
    await _framHorseHerdPrefrences!.setInt(_horseHerd, value);
  }

  static int getHorseHerdValue() {
    return _framHorseHerdPrefrences!.getInt(_horseHerd) ?? 0;
  }

  static Future clearHorseHerd() async {
    await _framHorseHerdPrefrences!.remove(_horseHerd);
  }
}


 
class FarmCamelStatusPref {
  static SharedPreferences? _framCamelStatusPrefrences;
  static const _camelstatus = 'CamelStatus';

  static Future init() async {
    _framCamelStatusPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- CamelStatus---------------------------- */
  static Future setCamelStatusValue(int value) async {
    await _framCamelStatusPrefrences!.setInt(_camelstatus, value);
  }

  static int getCamelStatusValue() {
    return _framCamelStatusPrefrences!.getInt(_camelstatus) ?? 0;
  }

  static Future clearCamelStatus() async {
    await _framCamelStatusPrefrences!.remove(_camelstatus );
  }
}

class FarmCowStatusPref {
  static SharedPreferences? _framCowStatusPrefrences;
  static const _cowstatus = 'CowStatus';

  static Future init() async {
    _framCowStatusPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- CowStatus---------------------------- */
  static Future setCowStatusValue(int value) async {
    await _framCowStatusPrefrences!.setInt(_cowstatus, value);
  }

  static int getCowStatusValue() {
    return _framCowStatusPrefrences!.getInt(_cowstatus) ?? 0;
  }

  static Future clearCowStatus() async {
    await _framCowStatusPrefrences!.remove(_cowstatus);
  }
}

class FarmSheepStatusPref {
  static SharedPreferences? _framSheepStatusPrefrences;
  static const _sheepstatus = 'SheepStatus';

  static Future init() async {
    _framSheepStatusPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- SheepStatus---------------------------- */
  static Future setSheepStatusValue(int value) async {
    await _framSheepStatusPrefrences!.setInt(_sheepstatus, value);
  }

  static int getSheepStatusValue() {
    return _framSheepStatusPrefrences!.getInt(_sheepstatus) ?? 0;
  }

  static Future clearSheepStatus() async {
    await _framSheepStatusPrefrences!.remove(_sheepstatus);
  }
}

class FarmGoatStatusPref {
  static SharedPreferences? _framGoatStatusPrefrences;
  static const _goatstatus = 'GoatStatus';

  static Future init() async {
    _framGoatStatusPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- GoatStatus---------------------------- */
  static Future setGoatStatusValue(int value) async {
    await _framGoatStatusPrefrences!.setInt(_goatstatus, value);
  }

  static int getGoatStatusValue() {
    return _framGoatStatusPrefrences!.getInt(_goatstatus) ?? 0;
  }

  static Future clearGoatStatus() async {
    await _framGoatStatusPrefrences!.remove(_goatstatus);
  }
}
class FarmHorseStatusPref {
  static SharedPreferences? _framHorseStatusPrefrences;
  static const _horsestatus = 'HorseStatus';

  static Future init() async {
    _framHorseStatusPrefrences = await SharedPreferences.getInstance();
  }

/*------------------------------- HorseStatus---------------------------- */
  static Future setHorseStatusValue(int value) async {
    await _framHorseStatusPrefrences!.setInt(_horsestatus, value);
  }

  static int getHorseStatusValue() {
    return _framHorseStatusPrefrences!.getInt(_horsestatus) ?? 0;
  }

  static Future clearHorseStatus() async {
    await _framHorseStatusPrefrences!.remove(_horsestatus);
  }
}




