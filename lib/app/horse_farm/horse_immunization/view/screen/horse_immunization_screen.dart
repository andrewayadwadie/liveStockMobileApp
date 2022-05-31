import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../widgets/horse_immunization_form_widget.dart';

class HorseImmunizationScreen extends StatelessWidget {
  const HorseImmunizationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: offwhiteColor,
        appBar:AppBar(
            backgroundColor: whiteColor,
            leading: IconButton(
              onPressed: () => Get.offAll(HomeScreen()),
              icon: const Icon(Icons.home),
              color: primaryColor,
            ),
            title: const AppBarTitle()
          ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height /  1.173,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height / 30,
                    left: MediaQuery.of(context).size.width / 10,
                    child: const Text(
                      "Immunization of Horse farm",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //!Immunization Form Body
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 1.35,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: const HorseImmunizationFormWidget(),
    
                      //FarmOwnerFormWidget(farmOwnerKet: _formKey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}