import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/db/auth_shared_preferences.dart';
import '../../utils/style.dart';
import '../add_new_farm/service/government_service.dart';
import '../auth/login_screen.dart';
import '../home/home_screen.dart';
import '../shared_widgets/no_internet_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  late AnimationController _lottieAnimation;
  var expanded = false;
  //final double _bigFontSize = kIsWeb ? 234 : 30;
  final transitionDuration = const Duration(seconds: 1);

  @override
  void initState() {
    _lottieAnimation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    Future.delayed(const Duration(seconds: 1))
        .then((value0) => setState(() => expanded = true))
        .then((value1) => const Duration(seconds: 1))
        .then(
          (value2) => Future.delayed(const Duration(seconds: 1)).then(
            (value3) => _lottieAnimation.forward().then(
                  (value4) =>GovernmentService.getGovernment().then((checkValue) {
                    log("checkValue in intro is :  $checkValue");
                    if (checkValue == 401) {
                      Get.offAll(const LoginScreen());
                    } else if (checkValue.runtimeType == List) {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) {
                        return TokenPref.getTokenValue().isEmpty
                            ? const LoginScreen()
                            : HomeScreen();
                      }), (route) => false);
                    } else if (checkValue == 500) {
                      Get.offAll(const NoInternetScreen());
                    }else{
                      Get.offAll(const NoInternetScreen());
                    }
                    
                  }
                  
                  
                  /*
                   ToolsService.getAllTools().then((checkValue) {
                    log("$checkValue");
                    if (checkValue == 401) {
                      Get.offAll(const LoginScreen());
                    } else if (checkValue.runtimeType == List) {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) {
                        return TokenPref.getTokenValue().isEmpty
                            ? const LoginScreen()
                            : HomeScreen();
                      }), (route) => false);
                    } else if (checkValue == 500) {
                      Get.offAll(const NoInternetScreen());
                    }
                  }
                  */
                  ),
                ),
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              crossFadeState: !expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: transitionDuration,
              firstChild: Container(),
              secondChild: Image.asset(
                "assets/images/logo.png",
                width: 150,
                height: 150,
              ),
              alignment: Alignment.centerLeft,
              sizeCurve: Curves.easeInOut,
            ),
            /*
            AnimatedDefaultTextStyle(
              duration: transitionDuration,
              curve: Curves.fastOutSlowIn,
              style: TextStyle(
                color: const Color(0xFFffffff),
                fontSize: expanded ? _bigFontSize : 45,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
              child: const Text(
                "?????????????? ?????????????? ????????????????",
                textAlign: TextAlign.center,
              ),
            ),
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              crossFadeState: !expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: transitionDuration,
              firstChild: Container(),
              secondChild: _logoRemainder(),
              alignment: Alignment.centerLeft,
              sizeCurve: Curves.easeInOut,
            ),
            */
          ],
        ),
      ),
    );
  }
/*
  Widget _logoRemainder() {
    return Column(
      children: const [
        Text(
          " ?????????? ???????????? ?????????????? ????????????????   ",
          style: TextStyle(
            color: Color(0xFFffffff),
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "?????????? ?????????? ???????????? ",
          style: TextStyle(
            color: Color(0xFFffffff),
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  */
}
