import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/current_location_controller.dart';
import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../camel_reproduction/view/screen/camel_reproduction_screen.dart';
import '../../controller/camel_send_feeding_data_controller.dart';
import '../widgets/camel_feeding_widget.dart';

class CamelFeedingScreen extends StatelessWidget {
  CamelFeedingScreen({Key? key}) : super(key: key);
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
              onPressed: () => Get.offAll(HomeScreen()),
              icon: const Icon(Icons.home),
              color: primaryColor,
            ),
            title: const AppBarTitle()
          ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.173,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 800,
                    ),
                    const Center(
                      child: Text(
                        "Camel Feeding",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 1.4,
                      decoration: const BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      child: Stack(
                        children: [
                          //!formContent
                          Positioned(
                            top: MediaQuery.of(context).size.height / 50,
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.17,
                                height: MediaQuery.of(context).size.height / 1.5,
                                child: const CamelFeedingWidget()),
                          ),
                          //!Submit (Next Buttom)
                          GetBuilder<CurrentLocationController>(
                              init: CurrentLocationController(),
                              builder: (location) {
                                return Align(
                                  alignment: Alignment.bottomRight,
                                  child: GetBuilder<CamelFeedingSendDataController>(
                                    init:CamelFeedingSendDataController(),
                                    builder: (ctrl) {
                                      return InkWell(
                                        onTap: () {
                                          if (_formKey.currentState!.validate()) {
                                            _formKey.currentState!.save();
                                           ctrl.fillAnswerListWithData();
                                           FarmCamelFeedingPref.setCamelFeedingValue(FarmCamelHerdPref
                                                    .getCamelHerdValue());
                                            Get.offAll(()=>CamelReproductionScreen());
                                          }
                                        
                                         // Get.to(CamelReproductionScreen());
                                        },
                                        child: SizedBox(
                                          child: SvgPicture.asset(
                                            "assets/icons/nextandsave.svg",
                                            width: MediaQuery.of(context).size.width /
                                                10,
                                            height:
                                                MediaQuery.of(context).size.height /
                                                    10,
                                          ),
                                        ),
                                      );
                                    }
                                  ),
                                );
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
