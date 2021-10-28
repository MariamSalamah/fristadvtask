import 'package:flutter/material.dart';

import 'pic_card.dart';

Widget TaskCard(){
  return  Padding(
    padding: const EdgeInsets.all(10),
    child: Container(

      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 6, horizontal: 10),
                child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(.3),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                        Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "New",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ), //task state
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 6, horizontal: 10),
                child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(.3),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                        Offset(0, 3), // changes position of shadow
                      ),
                    ],
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
              ), //task state

              //task state

              SizedBox(
                width: 150,
              ),
              Icon(
                Icons.vertical_split_rounded,
                color: Colors.grey,
              ),
            ],
          ),

          Container(
            width: 340,
            child: Center(
              child: Divider(
                  thickness: 2,
                  color: Colors.grey.shade100
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Call with Australians",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_filled_rounded,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "13:00- 15:50",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Container(
          //   width: 300,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.grey.shade100)
          //   ),
          //   child: Container(
          //     width: 200,
          //     child:
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 150,
                  child: Divider(

                      thickness: 5,
                      color: Colors.red.shade600
                  ),
                ),
                Container(
                  width: 100,
                  child: Divider(

                      thickness: 2,
                      color: Colors.grey.shade300
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                    children: [
                      Stack(children: [
                        Container(
                          height: 40,
                          width: 90,
                        ),
                        Positioned(
                          left: 5,
                          child: PicCard(
                              'https://image.freepik.com/free-photo/positive-male-customer-presenting-new-product_74855-3636.jpg'),
                        ),
                        Positioned(
                            left: 25,
                            child: PicCard(
                                'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg')),
                        Positioned(
                            left: 45,
                            child: PicCard(
                                'https://image.freepik.com/free-photo/happy-man-with-arms-crossed_23-2148221706.jpg')),
                      ]),

                      Text(
                        "Send invite",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),

                    ]),



                Icon(Icons.share_outlined),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}