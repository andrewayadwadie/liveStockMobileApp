// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../utils/style.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({
    Key? key,
    required this.path1,
    required this.file1,
  }) : super(key: key);
  final String path1;

  final File file1;

  @override
  Widget build(BuildContext context) {
    return path1 != ""
        ? Container(
            width: MediaQuery.of(context).size.width /3,
            height: MediaQuery.of(context).size.height / 5,
            margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: lightPrimaryColor),
                borderRadius: BorderRadius.circular(10)),
            child: Image.file(
              file1,
              width: 120,
              height: 100,
              fit: BoxFit.contain,
            ),
          )
        : Container(
           margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 80),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 7,
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/icons/question-mark.png',
                  width: 60,
                  height: 60,
                ),
                const Text(
                  'please attach a photo of farm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.1,
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'hanimation',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
  }
}
