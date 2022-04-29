import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../add_camel_herd/view/screen/camel_herd_screen.dart';
import '../../../home/home_screen.dart';
import '../../../home/widgets/farm_item_widget.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../controller/farm_item_widget_controller.dart';

class AnimalTypeScreen extends StatelessWidget {
  const AnimalTypeScreen({
    Key? key,
    required this.farmId,
  }) : super(key: key);
  final int farmId;
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
              onPressed: () => Get.offAll(() => HomeScreen()),
              icon: const Icon(Icons.home),
              color: primaryColor,
            ),
            title: const AppBarTitle()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.173,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 800,
                  ),
                  const Center(
                    child: Text(
                      "Choose Animal Type",
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
                        //! animal type List
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 1.5,
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 20),
                            child: GetBuilder<FarmItemWidgetController>(
                                init: FarmItemWidgetController(),
                                builder: (itemCtrl) {
                                  return GridView.builder(
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
                                              FarmAnimalTypePref
                                                  .setAnimalTypeValue(
                                                      itemCtrl.choicedId);
                                            }
                                          },
                                          onDoubleTap: () {
                                            itemCtrl.reset();
                                          },

                                          title: itemCtrl.items[index],
                                          imagePath: "assets/icons/$index.png",
                                        );
                                      });
                                }),

                            /*
                            ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GetBuilder<FarmItemWidgetController>(
                                    init: FarmItemWidgetController(),
                                    builder: (itemCtrl) {
                                      return FarmItemWidget(
                                        selected: itemCtrl.isSelected[0],
                                        onTap: () {
                                          itemCtrl.onTap(0);
                                        },
                                        title: itemCtrl.items[0],
                                        imagePath: "assets/icons/camel.png",
                                      );
                                    }),
                                GetBuilder<FarmItemWidgetController>(
                                    init: FarmItemWidgetController(),
                                    builder: (itemCtrl) {
                                      return FarmItemWidget(
                                        selected: itemCtrl.isSelected[1],
                                        onTap: () {
                                          itemCtrl.onTap(1);
                                        },
                                        title: itemCtrl.items[1],
                                        imagePath: "assets/icons/chicken.png",
                                      );
                                    }),
                                GetBuilder<FarmItemWidgetController>(
                                    init: FarmItemWidgetController(),
                                    builder: (itemCtrl) {
                                      return FarmItemWidget(
                                        selected: itemCtrl.isSelected[2],
                                        onTap: () {
                                          itemCtrl.onTap(2);
                                        },
                                        title: itemCtrl.items[2],
                                        imagePath: "assets/icons/cow.png",
                                      );
                                    }),
                                GetBuilder<FarmItemWidgetController>(
                                    init: FarmItemWidgetController(),
                                    builder: (itemCtrl) {
                                      return FarmItemWidget(
                                        selected: itemCtrl.isSelected[3],
                                        onTap: () {
                                          itemCtrl.onTap(3);
                                        },
                                        title: itemCtrl.items[3],
                                        imagePath: "assets/icons/goat.png",
                                      );
                                    }),
                              ],
                            ),
                            */
                          ),
                        ),

                        //!Submit (Next Buttom)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => CamelHerdScreen(
                                  animalTypeId:
                                      FarmAnimalTypePref.getAnimalTypeValue()));
                            },
                            child: SizedBox(
                              child: SvgPicture.asset(
                                "assets/icons/next_button.svg",
                                width: MediaQuery.of(context).size.width / 12,
                                height: MediaQuery.of(context).size.height / 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
