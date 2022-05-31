import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../../utils/style.dart';
import '../controller/home_body_controller.dart';
import 'add_new_farm_widget.dart';
import 'task_item_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 1.24,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(2, -3), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Title
            const Text(
              "Hi,Doctor",
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            const Text(
              "Welcome back",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1.1),
            ),
            // Category title
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Farms",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.1),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            //Farms Type Slider
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 7.3,
              decoration: const BoxDecoration(
                  // border: Border.all(width: 1, color: darkColor)
                  ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GetBuilder<HomeBodyController>(
                      init: HomeBodyController(),
                      builder: (ctrl) {
                        return AddNewFarmWidget(
                          title: "Add New",
                          icon: Icons.add_circle_outline,
                          onClick: () {
                            ctrl.routeCheck();
                            log("""
                            TokenPref ${TokenPref.getTokenValue()}},
                            FarmOwnerPref ${FarmOwnerPref.getOwnerValue()}},
                            FarmOwnerNamePref ${FarmOwnerNamePref.getOwnerNameValue()}},
                            FarmPref ${FarmPref.getValue()}},
                            FarmAnimalTypePref ${FarmAnimalTypePref.getAnimalTypeValue()}},
                            FarmCamelHerdPref ${FarmCamelHerdPref.getCamelHerdValue()}},
                            FarmCowHerdPref ${FarmCowHerdPref.getCowHerdValue()}},
                            FarmCamelStatusPref ${FarmCamelStatusPref.getCamelStatusValue()}},
                            FarmCowStatusPref ${FarmCowStatusPref.getCowStatusValue()}},
                            FarmSheepStatusPref ${FarmSheepStatusPref.getSheepStatusValue()}},
                              """);
                          },
                        );
                      }),
                  AddNewFarmWidget(
                    title: "Add Follow Up",
                    icon: Icons.task_alt,
                    onClick: ()  {
                                 FarmOwnerNamePref.clearOwnerName();
                       FarmOwnerPref.clearOwner();
                       FarmPref.clear();
                       FarmAnimalTypePref.clearAnimalType();
                      //!initialize the Canmel Farm shared preferences
                       FarmCamelHerdPref.clearCamelHerd();
                       FarmCowHerdPref.clearCowHerd();
                       FarmSheepHerdPref.clearSheepHerd();
                       FarmCamelStatusPref.clearCamelStatus();
                       FarmCowStatusPref.clearCowStatus();
                       FarmSheepStatusPref.clearSheepStatus();
                    },
                  ),
                ],
              ),
            ),
            // Category title 2
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Farm Owner",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.1),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ],
            ),
            //Tasks List Slider
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.48,
              child: ListView(
                children: const [
                  TaskItemWIdget(),
                  TaskItemWIdget(),
                  TaskItemWIdget(),
                  TaskItemWIdget(),
                  TaskItemWIdget(),
                  TaskItemWIdget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
  FarmItemWidget(
    title: 'Camal Farm',
    subTitle: '12Reports',
    imagePath: "assets/icons/camel.png",
  ),
  FarmItemWidget(
    title: 'Chicken Farm',
    subTitle: '5Reports',
    imagePath: "assets/icons/chicken.png",
  ),
  FarmItemWidget(
    title: 'Cow Farm',
    subTitle: '2Reports',
    imagePath: "assets/icons/cow.png",
  ),
  FarmItemWidget(
    title: 'Goat Farm',
    subTitle: '9Reports',
    imagePath: "assets/icons/goat.png",
  ),
 */