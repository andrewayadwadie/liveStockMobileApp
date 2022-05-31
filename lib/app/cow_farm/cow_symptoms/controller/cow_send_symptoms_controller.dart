import 'package:get/get.dart';

class CowSendsymptomsDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer({
    int symptomsId = 0,
    int count = 0,
  }) {
    answers.add({"SyndromeId": symptomsId, "Count": count});
    update();
  }
}
