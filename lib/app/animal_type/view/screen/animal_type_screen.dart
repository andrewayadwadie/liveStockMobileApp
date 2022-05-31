import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../camel_farm/add_camel_herd/view/screen/camel_herd_screen.dart';
import '../../../cow_farm/cow_herd/view/screen/cow_herd_screen.dart';
import '../../../goat_farm/goat_herd/view/screen/goat_herd_screen.dart';
import '../../../home/home_screen.dart';
import '../../../home/widgets/farm_item_widget.dart';
import '../../../horse_farm/horse_herd/view/screen/horse_herd_screen.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../../sheep_farm/sheep_herd/view/screen/sheep_herd_screen.dart';
import '../../../test_screen/screen/chicken_cooming_soon_screen.dart';
import '../../controller/farm_item_widget_controller.dart';

// ignore: must_be_immutable
class AnimalTypeScreen extends StatelessWidget {
  const AnimalTypeScreen({
    Key? key,
  
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
          appBar: AppBar(
              backgroundColor: whiteColor,
              leading: IconButton(
                onPressed: () => Get.offAll(() => HomeScreen()),
                icon: const Icon(Icons.home),
                color: primaryColor,
              ),
              title: const AppBarTitle()),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
              const Center(
                child: AutoSizeText(
                  "Choose Animal Type",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             SizedBox(
              height: MediaQuery.of(context).size.height / 35,
            ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.3,
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  child: GetBuilder<FarmItemWidgetController>(
                      init: FarmItemWidgetController(),
                      builder: (itemCtrl) {
                        return Stack(
                          children: [
                            //! animal type List
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  alignment: Alignment.topCenter,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height /
                                      1.5,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 20),
                                  child: GridView.builder(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 10),
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 20.0,
                                        mainAxisSpacing: 20.0,
                                      ),
                                      itemCount: itemCtrl.items.length,
                                      itemBuilder: (BuildContext ctx, index) {
                                        return FarmItemWidget(
                                          //     selected: itemCtrl.isSelected[index],
                                          color: itemCtrl
                                              .afterColorSelected[index],
                                          onTap: () {
                                            if (!itemCtrl.isClicked) {
                                              itemCtrl.changeSelected(index);
                                              itemCtrl.isClicked = true;
                                              itemCtrl.update();
                                            }
                                          },
                                     
                                          title: itemCtrl.items[index],
                                          imagePath:
                                              "assets/icons/$index.png",
                                        );
                                      })),
                            ),
                    
                            if (itemCtrl.choicedId != 0)
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      itemCtrl.reset();
                                      //itemCtrl.update();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width /
                                              2,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                      child: const AutoSizeText(
                                        "Reset",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )),
                    
                            //!Submit (Next Buttom)
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () async {
                                  if (itemCtrl.choicedId > 0) {
                                    await FarmAnimalTypePref
                                        .setAnimalTypeValue(
                                            itemCtrl.choicedId);
                                    if (itemCtrl.choicedId == 1) {
                                      Get.to(() => CowHerdScreen());
                                    } else if (itemCtrl.choicedId == 2) {
                                      Get.to(() => CamelHerdScreen());
                                    } else if (itemCtrl.choicedId == 3) {
                                      Get.to(() => SheepHerdScreen());
                                    }
                                     else if (itemCtrl.choicedId == 4) {
                                      Get.to(() => GoatHerdScreen());
                                    } else if (itemCtrl.choicedId == 5) {
                                      Get.to(() => HorseHerdScreen());
                                    }
                                     else if (itemCtrl.choicedId == 6) {
                                      Get.to(() => const ChickenComingSoonScreen());
                                    }
                                  } else {
                                      Get.snackbar("Alert",
                                          "Please choose an animal type",
                                          overlayColor: secondaryColor);
                                    }
                                },
                                child: SizedBox(
                                  child: SvgPicture.asset(
                                    "assets/icons/next_button.svg",
                                    width: MediaQuery.of(context).size.width /
                                        10,
                                    height:
                                        MediaQuery.of(context).size.height /
                                            10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
