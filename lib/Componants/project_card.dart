import 'package:flutter/material.dart';

import 'member_card.dart';
Widget projectCard(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 215,
      width: 215,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              Container(
                width: 80,
                child: Text(
                  "Design Line Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: .85,
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                      strokeWidth: 5,
                      backgroundColor: Colors.white,
                    ),
                    Center(
                      child: Text("85%"),
                    ),
                  ],
                ),
              ),

              // Container(
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //
              //     child: CircularProgressIndicator(
              //       value: .85,
              //
              //     ),
              //   ),
              // ), //circle
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Container(
              width: 70,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(.2),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(
                  "Urgent",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Text(
            "Team",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: 135,
                  ),
                  Positioned(
                    left: 5,
                    child: memberCard(
                        'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                  ),
                  Positioned(
                      left: 25,
                      child: memberCard(
                          'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg')),
                  Positioned(
                      left: 45,
                      child: memberCard(
                          'https://image.freepik.com/free-photo/happy-man-with-arms-crossed_23-2148221706.jpg')),
                  Positioned(
                    left: 65,
                    child: memberCard(
                        'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                  ),
                  Positioned(
                      left: 85,
                      child: memberCard(
                          'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg')),
                  Positioned(
                      left: 105,
                      child: memberCard(
                          'https://image.freepik.com/free-photo/happy-man-with-arms-crossed_23-2148221706.jpg')),

                ],
              ),
            ],
          ), //pics
        ],
      ),
    ),
  );
}
