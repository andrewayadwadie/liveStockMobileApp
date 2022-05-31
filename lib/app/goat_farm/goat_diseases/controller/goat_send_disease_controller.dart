import 'package:get/get.dart';

class GoatSendDiseaseDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer({
    int diseaseId = 0,
    int count = 0,
  }) {
    answers.add({"DiseaseId": diseaseId, "Count": count});
    update();
  }
}
