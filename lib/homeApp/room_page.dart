import 'package:flutter/material.dart';
class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Bed Room", style: TextStyle(),),
        centerTitle: false,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            ListView(
              children: [

                CircleAvatar(
                  child: Icon(Icons.music_note),

                ),
                //more circles

              ],
            ),


            //todo circle to check

            Row(
              children: [
                Column(
                  children: [
                    Text("", style: TextStyle(),),
                    Text("", style: TextStyle(),),
                  ],
                ),
                Column(
                  children: [
                    Text("", style: TextStyle(),),
                    Text("", style: TextStyle(),),
                  ],
                ),
              ],
            ),
            //Switch(value: true, onChanged: (){})

            TextButton(onPressed: (){}, child: Text("", style: TextStyle(),),),

          ],
        ),
      ),
    );
  }
}
