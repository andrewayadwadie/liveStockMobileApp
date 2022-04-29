import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text("Test Screen ")
            ],
          ),
        ) 
      
      ),
    );
  }
}