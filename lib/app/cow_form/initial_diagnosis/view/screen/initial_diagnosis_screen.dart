// ignore: file_names
import 'package:animal_wealth/app/cow_form/initial_diagnosis/view/widgets/initial_diagnosis_form_widget.dart';
import 'package:animal_wealth/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialdiagnosisScreen extends StatelessWidget {
  const InitialdiagnosisScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
          color: primaryColor,
        ),
        title: const Center(
          child: Text(
            'Cow Form',
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.1788,
            width: MediaQuery.of(context).size.width,
            // decoration:
            //     BoxDecoration(border: Border.all(width: 2, color: redColor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 800,
                ),
                const Center(
                  child: Text(
                    "Syndromes",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //!Initial diagnosis Form Body
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.35,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: const IntialDiagnosisFormWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}