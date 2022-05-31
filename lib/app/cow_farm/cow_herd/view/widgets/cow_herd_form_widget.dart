 
import '../../controller/cow_herd_form_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../add_new_farm/view/widgets/activity_type_field_widget.dart';
import '../../../../add_new_farm/view/widgets/education_system_widget.dart';
import '../../../../add_new_farm/view/widgets/farm_size_field_widget.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'cow_dynasty_widget.dart';
import 'cow_herd_textfield_widget.dart';
 
 
class CowHerdFormWidget extends StatelessWidget {
  const CowHerdFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CowHerdFormController>(
        init: CowHerdFormController(),
        builder: (ctrl) {
          return ListView(
            children: [
             //! Number of Animals in Farm
              const LabelWidget(label: "Number of animals in farm : "),
              CowHerdTextFieldWidget(
                title: "Number of Animals in Farm",
                onChange: (val) {
                  ctrl.changenumberOfAnimals(val ?? "");
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter number of animals in farm";
                  } else if (value.length > 7) {
                    return "Please enter a valid number";
                  }
                },
                controller: ctrl.numberOfAnimalsCtrl,
              ),
              //! Number of cases
              const LabelWidget(label: "Number of cases : "),
              CowHerdTextFieldWidget(
                  title: "Number of cases",
                  onChange: (val) {
                    ctrl.changenumberOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of cases in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfCasesCtrl),
              //! Number of Adults
              const LabelWidget(label: "Number of Adults (from 6 to 15 year) "),
              CowHerdTextFieldWidget(
                  title: "Number of adults",
                  onChange: (val) {
                    ctrl.changenumberOfAdults(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Adults in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfAdultsCtrl),
              //! Number of virginity
              const LabelWidget(
                  label: "Number of virginity (From 4 to 6 years) "),
              CowHerdTextFieldWidget(
                  title: "Number of virginity",
                  onChange: (val) {
                    ctrl.changenumberOfVirginity(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of virginity in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfVirginityCtrl),
              //! Number of Aged
              const LabelWidget(label: "Number of Aged (Over 15 years old) "),
              CowHerdTextFieldWidget(
                  title: "Number of Aged",
                  onChange: (val) {
                    ctrl.changenumberOfAged(
                        val ?? ""); // enabledBorder: InputBorder.none,
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Aged in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfAgedCtrl),
              //! Number of  infant
              const LabelWidget(
                  label: "Number of infant (From 8 months to a year) "),
              CowHerdTextFieldWidget(
                  title: "Number of  infant",
                  onChange: (val) {
                    ctrl.changenumberOfInfant(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of infant in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfInfantCtrl),
              //! Number of ablactation
              const LabelWidget(label: "Number of ablactation : "),
              CowHerdTextFieldWidget(
                  title: "Number of ablactation",
                  onChange: (val) {
                    ctrl.changenumberOfAblaction(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of ablactation in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfAblactionCtrl),
              //! Number of deaths
              const LabelWidget(label: "Number of deaths : "),
              CowHerdTextFieldWidget(
                  title: "Number of Deaths",
                  onChange: (val) {
                    ctrl.changenumberOfDeaths(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of deaths in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfDeathsCtrl),
              //! Number of sudden death
              const LabelWidget(label: "Number of sudden death : "),
              CowHerdTextFieldWidget(
                  title: "Number of sudden death",
                  onChange: (val) {
                    ctrl.changenumberOfSuddenDeath(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of sudden death in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfSuddenDeathCtrl),
              //!number of males
              const LabelWidget(label: "Number of males: "),

              CowHerdTextFieldWidget(
                  title: 'number of males',
                  onChange: (val) {
                    ctrl.changenumberOfMales(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of males  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfMalesCtrl),
              //!number of females
              const LabelWidget(label: "Number of females : "),
              CowHerdTextFieldWidget(
                  title: 'number of females',
                  onChange: (val) {
                    ctrl.changenumberOfFemales(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of females  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                  },
                  controller: ctrl.numberOfFemalesCtrl),
            
              //!<<<<<< Farm Size>>>
              const LabelWidget(label: "Farm Size : "),
              const FarmSizeFieldWidget(),
              //!<<<<<< Farm activity type>>>
              const LabelWidget(label: "Farm activity type : "),
              const ActivityTypeFieldWidget(),

              //!dynasty
              const LabelWidget(label: "Cow Dynasty : "),
              const CowDynastyWidget(),

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
                  controller: ctrl.noteCtrl,
            
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
                  onChanged: (val) {
                    ctrl.changenote(val );
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
