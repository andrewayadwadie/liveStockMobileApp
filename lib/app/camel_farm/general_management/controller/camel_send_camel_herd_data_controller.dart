import 'package:get/get.dart';

class SendCamelHerdDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer({int id =0, String answer=""}) {
    answers.add({"QuestionAnswerId": id, "Comment": answer});
    update();
  }
}
 