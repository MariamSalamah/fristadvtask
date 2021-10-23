import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("", style: TextStyle(),),
            Row(
              children: [

                Text("", style: TextStyle(),),
                Container(),


              ],
            ),


            Row(
              children: [
                Container(),
                Column(
                  children: [
                    Text("", style: TextStyle(),),
                    Text("", style: TextStyle(),),
                  ],
                ),



              ],
            ),

            Container(

              child: Column(

                children: [


                  //img
                  Text("", style: TextStyle(),),
                  Text("", style: TextStyle(),),


                ],



              ),

            ), //gridview

            Row(
              children: [

                Container(), //cover
                Column(
                  children: [
                    Text("", style: TextStyle(),),
                    Text("", style: TextStyle(),),
                  ],
                ),
                // love icon
                Container(
                    child:

                    Icon(Icons.pause)

                ),

              ],
            ), //music

            Container(
              child: Row(
                children: [
                  Icon(Icons.home),
                  Icon(Icons.group_outlined),
                  Icon(Icons.flash_on_outlined),
                  Icon(Icons.settings),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
