import 'package:flutter/material.dart';

import '../../../utils/style.dart';
import 'widgets/drawer_header_widget.dart';
import 'widgets/drawer_item_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      child: ListView(children: const [
        DrawerHeaderWidget(
          title: "Animal Wealth Project",
          subTitle: "Saudi Ministry of Agriculture",
          logoPath: "assets/images/logo.png",
        ),
        DrawerItemWidget(title: "Notifications ",icon: Icons.notifications,),
        DrawerItemWidget(title: "Tasks ", icon: Icons.task_alt),
        DrawerItemWidget(title: "Statistics ",icon: Icons.bar_chart_outlined,),
        DrawerItemWidget(title: "messages ",icon: Icons.message,),
        DrawerItemWidget(title: "Settings ", icon: Icons.settings),
        DrawerItemWidget(title: "Reports ",icon: Icons.report,),
      ]),
    );
  }
}
