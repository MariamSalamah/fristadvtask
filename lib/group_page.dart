import 'package:flutter/material.dart';
class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),

        actions: [
          Icon(Icons.more_vert_outlined),
          Icon(Icons.ios_share),
        ],
      ) ,
      body: SingleChildScrollView(
        child: Column(

          children: [

            Text("", style: TextStyle(),),

            Row(
              children: [

                Container(), // circle
                Column(
                  children: [
                    Text("", style: TextStyle(),),
                    Row(), //pics
                    Text("", style: TextStyle(),),
                    Container(), //task
                  ],
                ),

              ],
            ),


            Row(
              children: [
                Container(), //task state
                Container(), //task state
                Container(), //task state
              ],
            ),


            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(), //task state
                      Container(), //task state
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),

                  Row(
                    children: [
                      Text("", style: TextStyle(),),
                      Text("", style: TextStyle(),),
                    ],
                  ),

                  //line

                  Row(
                    children: [
                      Row(), //pics
                      Icon(Icons.share_outlined),

                    ],
                  ),



                ],
              ),
            ),



          ],


        ),
      ),
    );
  }
}
