// ignore_for_file: deprecated_member_use

import 'package:animal_wealth/utils/style.dart';
import 'package:flutter/material.dart';

import 'sheep_symptoms_data_widget.dart';

 
class SheepSymptomsFormWidget extends StatelessWidget {
  const SheepSymptomsFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: ListView(
          children: [
            const Text(
              "What kind of Symptomss in the Farm ?",
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SheepsymptomsDataWidget()
          ],
        ),
      ),
     
    ]);
  }
}
