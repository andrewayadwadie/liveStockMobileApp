import '../../../../shared_widgets/custom_appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../camel_housing/view/screen/camel_housing_scren.dart';
import '../../controller/camel_send_general_data_controller.dart';
import '../widgets/general_management_widget.dart';

class GeneralManagementScreen extends StatelessWidget {
  GeneralManagementScreen({
    Key? key,
    required this.camelHerdId,
  }) : super(key: key);
  final int camelHerdId;
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
          title:  const AppBarTitle()
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
                        "General Management",
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
                                height:
                                    MediaQuery.of(context).size.height / 1.5,
                                child: const GeneralManagementWidget()),
                          ),
                          //!Submit (Next Buttom)
                          GetBuilder<CamelGeneralSendDataController>(
                              init: CamelGeneralSendDataController(),
                              builder: (ctrl) {
                                return Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: () async {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        ctrl.fillAnswerListWithData();
                                        // ctrl.sendData();
                                        FarmCamelGeneralPref
                                            .setCamelGeneralValue(
                                                FarmCamelHerdPref
                                                    .getCamelHerdValue());

                                        Get.offAll(() => CamelHousingScreen(
                                            generalId: FarmCamelHerdPref
                                                .getCamelHerdValue()));
                                      }
                                       
                                    },
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
                              })
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
