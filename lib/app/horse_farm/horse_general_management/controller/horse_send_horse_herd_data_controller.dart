import 'package:get/get.dart';

class SendHorseHerdDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer({int id =0, String answer=""}) {
    answers.add({"QuestionAnswerId": id, "Comment": answer});
    update();
  }
}
 