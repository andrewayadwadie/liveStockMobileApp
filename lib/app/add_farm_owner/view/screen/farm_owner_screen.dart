import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../widgets/farm_owner_form_widget.dart';

class FarmOwnerScreen extends StatelessWidget {
  FarmOwnerScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
              'New Farm',
              style: TextStyle(
                  color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height /  1.173,
              // decoration:
              //     BoxDecoration(border: Border.all(width: 2, color: redColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  //!Farm owner Title
                  const Center(
                    child: Text(
                      "Farm Owner",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //!farm Owner Body
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: const BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    child: FarmOwnerFormWidget(farmOwnerKey: _formKey),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
