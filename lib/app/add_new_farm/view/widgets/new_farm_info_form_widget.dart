import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/image_picker_controller.dart';
import '../../../../utils/style.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/city_controller.dart';
import '../../controller/farm_info_form_controller.dart';
import '../../controller/farm_location_controller.dart';
import '../../controller/government_controller.dart';
import 'Image_widget.dart';
import 'activity_type_field_widget.dart';
import 'area_widget.dart';
import 'city_widget.dart';
import 'farm_type_widget.dart';
import 'government_widget.dart';

class NewFarmInfoFormWidget extends StatelessWidget {
  const NewFarmInfoFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!<<<<<< Farm Name>>>
        const LabelWidget(label: "Farm Name : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 5),
          child: GetBuilder<FarmInfoFormController>(
              init: FarmInfoFormController(),
              builder: (farmInfoCtrl) {
                return TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: greyColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                     
                      hintText: "Farm Name",
                    
                      ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    farmInfoCtrl.changeFarmName(val ?? "");
                  },

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'You must enter a  Farm Name ';
                    }else if(value.isNum){
                      return 'Farm Name should not be a number';
                    }
                    return null;
                  }, // enabledBorder: InputBorder.none,
                );
              }),
        ),

        //! Farm Size
        const LabelWidget(label: "Farm Size : "),

        const FarmTypeWidget(),
        //! activity type
        const LabelWidget(label: "Activity type  : "),

        const ActivityTypeFieldWidget(),
        //!<<<<<< Area  >>>
        const LabelWidget(label: "Area : "),
        GetBuilder<GovernmentController>(
            init: GovernmentController(),
            builder: (controller) {
              return GetBuilder<FarmLocationController>(
                  init: FarmLocationController(),
                  builder: (farmCtrl) {
                    return Column(
                      children: [
                        GovernmentWidget(controller: controller),
                        if (controller.governmentsId.value != 0)
                          GetX<CityController>(
                              init: CityController(),
                              builder: (cityCtrl) {
                                return Column(
                                  children: [
                                    CityWidget(
                                        id: controller.governmentsId.value,
                                        controller: cityCtrl),
                                    if (cityCtrl.citiesId.value != 0)
                                      AreaWidget(id: cityCtrl.citiesId.value),
                                    if (farmCtrl.country.isNotEmpty &&
                                        farmCtrl.city.isNotEmpty &&
                                        farmCtrl.area.isNotEmpty)
                                      Container(
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 25,
                                            right: 25),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.1,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Area : ",
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                                " ${farmCtrl.country} ,${farmCtrl.city}, ${farmCtrl.area}")
                                          ],
                                        ),
                                      )
                                  ],
                                );
                              })
                      ],
                    );
                  });
            }),

        //!<<<<<< Farm Image>>>
        const LabelWidget(label: "Farm Image : "),
        GetBuilder<ImagePickerController>(
            init: ImagePickerController(),
            builder: (imgCtrl) {
              return InkWell(
                  onTap: () {
                    imgCtrl.pickImageFromCam();
                  },
                  child: ImagesWidget(
                      path1: imgCtrl.image.path, file1: imgCtrl.image));
            }),
      
      ],
    );
  }
}
