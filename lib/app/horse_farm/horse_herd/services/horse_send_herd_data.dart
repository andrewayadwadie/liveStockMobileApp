import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';

 
class SendHorseHerdData {
  static Future sendHorseHerdData({
    required int numberOfAnimals,
    required int numberOfCases,
    required int numberOfAdults,
    required int numberOfVirginity,
    required int numberOfAged,
    required int numberOfInfant,
    required int numberOfAblaction,
    required int numberOfMales,
    required int numberOfFemales,
    required int numberOfDeaths,
    required int numberOfSuddenDeath,
    required int farmId,
    required int eductionSystemId,
    required int animalStrainId,
    required String note,
    required String size,
    required String activityType,
    required String lat,
    required String long,
    required String dateOfEpidemiologicalSurvey,
  }) async {
    var url = "${apiUrl}Hourses/AddHourse";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ${TokenPref.getTokenValue()}',
          },
          body: jsonEncode({
            'NumberOfAnimals': numberOfAnimals,
            'NumberOfCases': numberOfCases,
            'NumberOfAdults': numberOfAdults,
            'NumberOfVirginity': numberOfVirginity,
            'NumberOfAged': numberOfAged,
            'NumberOfInfant': numberOfInfant,
            'NumberOfAblaction': numberOfAblaction,
            'NumberOfMales': numberOfMales,
            'NumberOfFemales': numberOfFemales,
            'NumberOfDeaths': numberOfDeaths,
            'NumberOfSuddenDeath': numberOfSuddenDeath,
            'FarmId': farmId,
            'EductionSystemId': eductionSystemId,
            'AnimalStrainId': animalStrainId,
            'ActivityType': activityType,
            'Lat': lat,
            'Long': long,
            'Note': note,
            'Size': size,
            'DateOfEpidemiologicalSurvey': dateOfEpidemiologicalSurvey,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return double.parse(res.body);
      } else if (res.statusCode == 400) {
        var ownerData = jsonDecode(res.body);
        return ownerData['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        return 500;
      }
    } catch (e) {
      throw "exception is : $e";
    }
  }
}
