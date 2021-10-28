import 'package:flutter/material.dart';
import 'package:fristadvtask/homeApp/RoomComponants/room_card.dart';

import 'room_page.dart';

class HomeRoomsPage extends StatefulWidget {
  const HomeRoomsPage({Key? key}) : super(key: key);

  @override
  _HomeRoomsPageState createState() => _HomeRoomsPageState();
}

class _HomeRoomsPageState extends State<HomeRoomsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Welcomehome",
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alex Tobey",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            fit: BoxFit.cover,
                            scale: 0.5)),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Center(child: Icon(Icons.flash_on_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: '20.3',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30)),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, 2),
                                child: Text(
                                  'Kwh',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 0.7,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            )
                          ]),
                        ),
                        Text(
                          "Power usage for today",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                         crossAxisSpacing: 25,
                         mainAxisSpacing: 25,
                        childAspectRatio: 1
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RoomPage()));
                          },
                          child: RoomCard());
                    }),
              ),
            ),//gridview

            Row(
              children: [
                Container(), //cover
                Column(
                  children: [
                    Text(
                      "",
                      style: TextStyle(),
                    ),
                    Text(
                      "",
                      style: TextStyle(),
                    ),
                  ],
                ),
                // love icon
                Container(child: Icon(Icons.pause)),
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
