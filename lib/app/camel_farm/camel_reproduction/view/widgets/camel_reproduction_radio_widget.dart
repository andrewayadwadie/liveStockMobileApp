import 'package:flutter/material.dart';

class CamelReproductionRadioWidget extends StatelessWidget {
  const CamelReproductionRadioWidget({
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
    ]);
  }
}
