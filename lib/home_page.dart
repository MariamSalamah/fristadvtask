import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fristadvtask/Componants/project_card.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good morning, Kristin",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.thegirlsnetwork.org.uk/GetImage.aspx?IDMF=ede1780f-257a-4dc1-a8d6-0e461518d9b7&w=564&h=817&src=mc"),
                            fit: BoxFit.cover,
                            scale: 0.5)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                height: 150,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "23",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                        Text(
                          "October",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Up next",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: Text(
                                    "Meeting lunch with James Strobisty",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Text(
                                "Dave's birthday party",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for projects, events, labels',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Projects",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),

             SizedBox(
               height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width,
               child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                         // crossAxisSpacing: 10,
                         // mainAxisSpacing: 10,
                        childAspectRatio: 1),
                    itemBuilder: (context, index) {
                      return projectCard();
                    }),
             ),


            //in gridview
          ],
        ),
      ),
    );
  }
}
