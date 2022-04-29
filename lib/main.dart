import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';

import 'app/intro/intro.dart';
import 'utils/db/auth_shared_preferences.dart';
import 'utils/style.dart';
import 'utils/translations/app_translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await FarmOwnerNamePref.init();
  await TokenPref.init();
  await ExpireDatePref.init();
  await FarmOwnerPref.init();
  await FarmPref.init();
  await FarmAnimalTypePref.init();
  await FarmCamelHerdPref.init();
  await FarmCamelGeneralPref.init();
  await FarmCamelHousingPref.init();
  await FarmCamelFeedingPref.init();
  await FarmCamelReproductionPref.init();
  await FarmCamelMilkerPref.init();
  await FarmCamelHealthPracticesPref.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return OverlaySupport.global(
      child: GetMaterialApp(
        title: 'Animal Wealth',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'cairo',
          primarySwatch: colorCustom,
        ),
        home: const IntroPage(),
        translations: Translation(),
        locale: const Locale('en'),
        fallbackLocale: const Locale('en'),
      ),
    );
  }
}
