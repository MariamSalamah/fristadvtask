import 'package:flutter/material.dart';

class PicCard extends StatelessWidget {
  String imgUrl;
  PicCard(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border(
            top: BorderSide(
                color: Color.fromRGBO(250, 250, 250, 1),
                width: 3
            ),
            bottom: BorderSide(
                color: Color.fromRGBO(250, 250, 250, 1),
                width: 3
            ),
            left: BorderSide(
                color: Color.fromRGBO(250, 250, 250, 1),
                width: 3
            ),
            right: BorderSide(
                color: Color.fromRGBO(250, 250, 250, 1),
                width: 3
            ),
          ),
          image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
        ),
      );
    }
  }

