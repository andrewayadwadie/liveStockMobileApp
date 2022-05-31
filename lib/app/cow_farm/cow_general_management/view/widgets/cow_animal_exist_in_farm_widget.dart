import 'package:flutter/material.dart';

class CowAnimalExistRadioWidget extends StatelessWidget {
  const CowAnimalExistRadioWidget({
    Key? key,
    required this.enumName,
    required this.yesValue,
    required this.onChangedYes,
    required this.noValue,
    required this.onChangedNo,
    required this.groupValue,
        required this.noAnswerValue,
    required this.onChangedNoAnswer,
  }) : super(key: key);

  final dynamic enumName;
  final dynamic yesValue;
  final Function(dynamic) onChangedYes;
  final dynamic noValue;
  final Function(dynamic) onChangedNo;
  final dynamic groupValue;
    final dynamic noAnswerValue;
  final Function(dynamic) onChangedNoAnswer;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Radio(
        //Radio<MiscarriageExist>
        value: yesValue, //MiscarriageExist.yes,
        groupValue: groupValue, //misCtrl.charcter,
        onChanged:
            onChangedYes, // misCtrl.onChange(val ?? MiscarriageExist.yes),
      ),
      const Text('Yes'),
      Radio(
        value: noValue,
        groupValue: groupValue,
        onChanged: onChangedNo,
      ),
      const Text('No'),
       Radio(
        value: noAnswerValue,
        groupValue: groupValue,
        onChanged: onChangedNoAnswer,
      ),
      const Text('No Answer'),
    ]);
  }
}
