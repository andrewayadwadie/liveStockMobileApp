import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../../../add_new_farm/controller/tools_controller.dart';
import '../../../add_new_farm/view/widgets/activity_type_field_widget.dart';
import '../../../add_new_farm/view/widgets/farm_size_field_widget.dart';
import '../../../add_new_farm/view/widgets/tools_type_widget.dart';
import '../../../add_new_farm/view/widgets/tools_widget.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../shared_widgets/label_widget.dart';

class HerdInfoFormWidget extends StatelessWidget {
  const HerdInfoFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //! Number of Animals in Farm
        const LabelWidget(label: "Number of animals in farm : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of Animals in Farm",
                hintText: "Number of Animals in Farm",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //! Number of cases
        const LabelWidget(label: "Number of cases : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of cases",
                hintText: "Number of cases",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //! Number of Adults
        const LabelWidget(label: "Number of Adults (from .. to..) "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of adults",
                hintText: "Number of adults",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //! Number of Aged
        const LabelWidget(label: "Number of Aged (from .. to..) "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of Aged",
                hintText: "Number of Aged",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //! Number of  infant
        const LabelWidget(label: "Number of infant (from .. to..) "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of  infant",
                hintText: "Number of  infant",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //! Number of ablactation
        const LabelWidget(label: "Number of ablactation (from .. to..) "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of ablactation",
                hintText: "Number of ablactation",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //! Number of deaths
        const LabelWidget(label: "Number of deaths : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of Deaths",
                hintText: "Number of Deaths",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //! Number of sudden death
        const LabelWidget(label: "Number of sudden death : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Number of sudden death",
                hintText: "Number of sudden death",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //!<<<<<< Farm Size>>>
        const LabelWidget(label: "Farm Size : "),
        const FarmSizeFieldWidget(),
        //!<<<<<< Farm activity type>>>
        const LabelWidget(label: "Farm activity type : "),
        const ActivityTypeFieldWidget(),

        //!<<<<<< Farm tools>>>
        const LabelWidget(label: "Farm tools : "),
        //  ToolsWidget(),
        GetX<ToolsController>(
            init: ToolsController(),
            builder: (controller) {
              return Column(
                children: [
                  ToolsWidget(controller: controller),
                  if (controller.toolsId.value != 0)
                    ToolstypeWidget(id: controller.toolsId.value)
                ],
              );
            }),

        //!dynasty
        const LabelWidget(label: "dynasty : "),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'dynasty'.tr,
                hintText: 'dynasty'.tr,
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //!number of males
        const LabelWidget(label: "number of males: "),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'number of males',
                hintText: 'number of males',
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //!number of females
        const LabelWidget(label: "number of females : "),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'number of females',
                hintText: 'number of females',
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
        //!fodder
        const LabelWidget(label: "fodder : "),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'fodder',
                hintText: 'fodder',
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        GetBuilder<DateController>(
            init: DateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LabelWidget(label: "date of epidemiological survey : "),
                  CupertinoButton(
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: whiteColor, fontSize: 15),
                          )),
                      onPressed: () => dateCtrl.onDateChange(context)),
                ],
              );
            }),

        //! Notes
        const LabelWidget(label: "Notes : "),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: primaryColor,
            maxLines: 2,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: greyColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Notes",
                hintText: "Notes",
                labelStyle: const TextStyle(
                    height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)
                //enabledBorder: InputBorder.none
                ),
            textInputAction: TextInputAction.done,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'error';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),

        //?<<<<<<Space>>>>>>>
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
      ],
    );
  }
}
