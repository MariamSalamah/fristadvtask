import 'package:flutter/material.dart';
Widget RoomCard (){
  return Container(
    height: 130,
    width: 130,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    decoration: BoxDecoration(
      color: Colors.deepOrange.shade500,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.bathtub_outlined , size: 40,),
        SizedBox(height:50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bathroom",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold , fontSize: 25),
            ),
            Text(
              "1 device",
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ),
      ],
    ),
  );
}