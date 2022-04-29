import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/current_location_controller.dart';
import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../camel_lab_info/view/screen/camel_lab_info_screen.dart';
import '../widgets/camel_clinical_examination_widget.dart';

class CamelclinicalExaminationScreen extends StatelessWidget {
  CamelclinicalExaminationScreen({Key? key}) : super(key: key);
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
                        "Clinical Examination",
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
                                child: const CamelclinicalExaminationWidget()),
                          ),
                          //!Submit (Next Buttom)
                          GetBuilder<CurrentLocationController>(
                              init: CurrentLocationController(),
                              builder: (location) {
                                return Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(CamelLabInfoScreen());
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
