import 'dart:convert';
 
import '../model/sheep_symptoms_type_model.dart';
import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
 
class SheepSymptomsService {
  static Future getSymptoms(int id) async {
    String url = "${apiUrl}Syndromes/GetAnimalTypeSyndromes/$id";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        'Authorization': 'Bearer ${TokenPref.getTokenValue()}',
      },
    );

    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List symptoms = jsonData.map((element) {
        return SheepSymptomsTypeModel.fromJson(element);
      }).toList();

      return symptoms;
    } else if (res.statusCode == 401) {
      return 401;
    } else if (res.statusCode == 500 ||
        res.statusCode == 501 ||
        res.statusCode == 504 ||
        res.statusCode == 502) {
      return 500;
    }
    return 400;
  }
}
