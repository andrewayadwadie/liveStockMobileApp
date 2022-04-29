import 'package:flutter/material.dart';

class CamelWateringLocationWidget extends StatelessWidget {
  const CamelWateringLocationWidget({
    Key? key,
    required this.enumName,
    required this.yesValue,
    required this.onChangedYes,
    required this.noValue,
    required this.onChangedNo,
    required this.groupValue,
  }) : super(key: key);

  final dynamic enumName;
  final dynamic yesValue;
  final Function(dynamic) onChangedYes;
  final dynamic noValue;
  final Function(dynamic) onChangedNo;
  final dynamic groupValue;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Radio(
        value: yesValue,
        groupValue: groupValue,
        onChanged: onChangedYes,
      ),
      const Text('Under Canopy'),
      Radio(
        value: noValue,
        groupValue: groupValue,
        onChanged: onChangedNo,
      ),
      const Text('Outdoors'),
    ]);
  }
}