import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class TaskItemWIdget extends StatelessWidget {
  const TaskItemWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width / 80,
          left: MediaQuery.of(context).size.width / 80,
          top: MediaQuery.of(context).size.height / 60),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        boxShadow: const [      
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(
              //    border: Border.all(width: 2,color: Colors.yellow),
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
            child: const Icon(
              Icons.note_alt,
              color: whiteColor,
              size: 50,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.4,
            height: MediaQuery.of(context).size.height / 11,
            // decoration: BoxDecoration(
            //   border: Border.all(width: 2,color: Colors.yellow),
            //  borderRadius: BorderRadius.circular(10),
            //   color: primaryColor,

            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Visit Cow farm",
                  style: TextStyle(
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text(
                  "first farm in Naseem",
                  style: TextStyle(
                      height: 1.1,
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/20),
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 25,
            
            child: Row(
              children: const   [
                Icon(Icons.view_list_outlined,color: secondaryColor,size: 10,),
                Text("3 visits",style: TextStyle(color: darkColor,fontSize: 9),),
                Icon(Icons.location_on,color: secondaryColor,size: 10,),
                Text("el naseem",style: TextStyle(color: darkColor,fontSize: 9),),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
