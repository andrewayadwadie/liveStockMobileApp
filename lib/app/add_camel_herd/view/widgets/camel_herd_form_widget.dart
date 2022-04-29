import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../../../add_new_farm/view/widgets/activity_type_field_widget.dart';
import '../../../add_new_farm/view/widgets/education_system_widget.dart';
import '../../../add_new_farm/view/widgets/farm_size_field_widget.dart';
import '../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/camel_herd_form_controller.dart';
import 'camel_dynasty_widget.dart';

class CamelHerdFormWidget extends StatelessWidget {
  const CamelHerdFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelHerdFormController>(
        init: CamelHerdFormController(),
        builder: (ctrl) {
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
                    hintText: "Number of Animals in Farm",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfAnimals(val ?? "0");
                  },
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

                    hintText: "Number of cases",

                    //enabledBorder: InputBorder.none
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfCases(val ?? "0");
                  },
                ),
              ),

              //! Number of Adults
              const LabelWidget(label: "Number of Adults (from 6 to 15 year) "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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

                    hintText: "Number of adults",

                    //enabledBorder: InputBorder.none
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfAdults(val ?? "0");
                  },
                ),
              ),

              //! Number of virginity
              const LabelWidget(
                  label: "Number of virginity (From 4 to 6 years) "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    hintText: "Number of virginity",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfVirginity(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
                ),
              ),

              //! Number of Aged
              const LabelWidget(label: "Number of Aged (Over 15 years old) "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    hintText: "Number of Aged",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfAged(
                        val ?? "0"); // enabledBorder: InputBorder.none,
                  },
                  // enabledBorder: InputBorder.none,
                ),
              ),

              //! Number of  infant
              const LabelWidget(
                  label: "Number of infant (From 8 months to a year) "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    hintText: "Number of  infant",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfInfant(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
                ),
              ),
              //! Number of ablactation
              const LabelWidget(label: "Number of ablactation : "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                    hintText: "Number of ablactation",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfAblaction(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
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
                    hintText: "Number of Deaths",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfDeaths(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
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
                    hintText: "Number of sudden death",
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfSuddenDeath(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
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
                    hintText: 'number of males',
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfMales(val ?? "0");
                  },
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
                    hintText: 'number of females',
                  ),
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    ctrl.changenumberOfFemales(val ?? "0");
                  },
                  // enabledBorder: InputBorder.none,
                ),
              ),

              //!<<<<<< Farm Size>>>
              const LabelWidget(label: "Farm Size : "),
              const FarmSizeFieldWidget(),
              //!<<<<<< Farm activity type>>>
              const LabelWidget(label: "Farm activity type : "),
              const ActivityTypeFieldWidget(),

              //!dynasty
              const LabelWidget(label: "Camel Dynasty : "),
              const CamelDynastyWidget(),

              //! Education system
              const LabelWidget(label: "Education System: "),
              const EduSysWidget(),

              //!Date

              GetBuilder<DateController>(
                  init: DateController(),
                  builder: (dateCtrl) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label: "date of epidemiological survey : "),
                        CupertinoButton(
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 1.8,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: whiteColor, fontSize: 14),
                                )),
                            onPressed: () => dateCtrl.onDateChange(context)),
                      ],
                    );
                  }),

              //!  notes
              const LabelWidget(label: "Notes : "),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: primaryColor,
                  maxLines: 2,
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

                    hintText: "Notes",

                    //enabledBorder: InputBorder.none
                  ),
                  textInputAction: TextInputAction.done,
                  onSaved: (val) {
                    ctrl.changenote(val ?? "");
                  },
                  // enabledBorder: InputBorder.none,
                ),
              ),

              //?<<<<<<Space>>>>>>>
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
            ],
          );
        });
  }
}
