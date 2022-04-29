import 'package:flutter/material.dart';

import '../../utils/style.dart';
import '../shared_widgets/drawer/drawer_screen.dart';
import 'widgets/home_body_widget.dart';
import 'widgets/home_screen_header_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFF155), primaryColor])),
      child: Scaffold(
          key: _key,
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Home Screen Header
                  HomeScreenHeaderWidget(
                      onClick: () => _key.currentState!.openDrawer()),
                  // Home Screen Body
                  const HomeBodyWidget(),
                ],
              )),
          drawer: const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: DrawerScreen(),
          )),
    );
  }
}
