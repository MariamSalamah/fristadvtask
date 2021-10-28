import 'package:flutter/material.dart';
// import 'package:fristadvtask/home_page.dart';

import 'homeApp/home_rooms_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomeRoomsPage()
      //HomePage()
    );
  }
}

