import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2.8,
    //  margin: const EdgeInsets.symmetric(horizontal: 10),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     width: 2,
      //     color: redColor
      //   )
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            width: MediaQuery.of(context).size.width / 10,
            height: MediaQuery.of(context).size.height / 10,
          ),
          
          Text(
            title,
            style: const TextStyle(
                color: primaryColor, fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
