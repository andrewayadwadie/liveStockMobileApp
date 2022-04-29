import 'package:flutter/material.dart';

import 'logo_widget.dart';

class HomeScreenHeaderWidget extends StatelessWidget {
  const HomeScreenHeaderWidget({
    Key? key,
    required this.onClick,
  }) : super(key: key);
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 13,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      //  decoration: const BoxDecoration(color: secondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoWidget(imagePath: 'assets/images/logo.png', title: 'Home'),
          InkWell(
            onTap:  onClick
            //     _key.currentState!.openDrawer()
            ,
            child: Image.asset(
              "assets/icons/hamburger.png",
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.height / 8,
            ),
          ),
        ],
      ),
    );
  }
}
