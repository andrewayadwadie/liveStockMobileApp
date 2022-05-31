import 'package:flutter/material.dart';

class CamelClinicalExaminationRadioWidget extends StatelessWidget {
  const CamelClinicalExaminationRadioWidget({
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
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
      Row(
        children: [
          Radio(
            
            value: yesValue, 
            groupValue: groupValue,
            onChanged:
                onChangedYes,
          ),
          const Text('Yes'),
        ],
      ),
      Row(
        children: [
          Radio(
            value: noValue,
            groupValue: groupValue,
            onChanged: onChangedNo,
          ),
          const Text('No'),
        ],
      ),
          Row(
        children: [
          Radio(
            value: noAnswerValue,
            groupValue: groupValue,
            onChanged: onChangedNoAnswer,
          ),
          const Text('No Answer'),
        ],
      ),
    ]);
  }
}
