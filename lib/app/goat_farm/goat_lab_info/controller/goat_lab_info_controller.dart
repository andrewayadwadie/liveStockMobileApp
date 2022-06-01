import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../../goat_diseases/view/screen/goat_diseases_screen.dart';
import '../service/goat_lab_service.dart';
 
class GoatLabInfoController extends GetxController {
   
  List samples = [].obs;
  late List<TextEditingController> sampleNumbertextEditList =
      <TextEditingController>[];
  late List<TextEditingController> placetextEditList =
      <TextEditingController>[];
  List<String> sampleTypeList = [];
  List<String> sampleDateList = [];

  void addSample( 
    int index, {
    String? sampleNumber,
  }) {
    samples[index]["SampleNumber"] = sampleNumber;
    sampleNumbertextEditList[index].value.text == sampleNumber;

    update();
  }

  void addPlaceSample(int index, {String placeSample = ""}) {
    samples[index]["SamplePlace"] = placeSample;
    placetextEditList[index].value.text == placeSample;
    update();
  }

  void addSampleType(
    int index, {
    String? sampleType,
  }) {
    samples[index]["SampleType"] = sampleType;
    sampleTypeList[index] == sampleType;

    update();
  }

   void addSampleDate(
    int index, {
    String? sampleDate,
  }) {

     
   
    samples[index]["Date"] = sampleDate;
    sampleDateList[index] == sampleDate;

    update();
  }
  

  void increaseList() {
    samples.add({"SampleNumber": "", "SamplePlace": "", "SampleType": "","Date":""});
    sampleNumbertextEditList.add(TextEditingController());
    placetextEditList.add(TextEditingController());
    sampleTypeList.add("");
    sampleDateList.add("");
    date.add(DateTime(2016, 10, 26));
    update();
  }

  void decreaseList(index) {
    samples.removeAt(index);
    sampleNumbertextEditList.removeAt(index);
    placetextEditList.removeAt(index);
    sampleTypeList.removeAt(index);
    sampleDateList.removeAt(index);
    date.removeAt(index);
    update();
  }


    List<DateTime> date = [];
  void showDialogg(Widget child, BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  void onDateChange(BuildContext context, int index) {
    showDialogg(
      CupertinoDatePicker(
        initialDateTime: DateTime(2016, 10, 26),
        mode: CupertinoDatePickerMode.date,
        use24hFormat: true,
        // This is called when the user changes the date.
        onDateTimeChanged: (DateTime newDate) {
          date[index] = newDate;
          update();
        },
      ),
      context,
    );
    addSampleDate(index,
        sampleDate:
            "${date[index].year}-${date[index].month}-${date[index].day} ");
  }

  void sendData( BuildContext context) async {
 

      var res = await SendGoatLabDataService.sendGoatLabDataService(
          data: samples);
      if (res == 200) {
        await FarmGoatStatusPref.setGoatStatusValue(10);
 
        Get.offAll(() => GoatlDiseasesScreen());
      } else if (res == 401) {
   
        Get.offAll(() => const LoginScreen());
      } else if (res == 500 || res == 400) {
 
        Get.snackbar(
          'Error',
          'Server Error $res',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          icon: const Icon(
            Icons.error,
            color: Colors.white,
          ),
        );
      } else if (res.runtimeType == String) {
 
        Get.snackbar(
          'Error',
          ' $res',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          icon: const Icon(
            Icons.error,
            color: Colors.white,
          ),
        );
      }
      log("message : $res");
  }


}
