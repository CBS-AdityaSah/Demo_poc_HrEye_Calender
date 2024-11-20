import 'package:flutter/material.dart';

import 'Aditya/Graph/Chart_homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChartHomescreen(),
      //home: MyHomePage(title: 'Easy Date Timeline 😊',),
      //home: DateTimeLineDemo(),
    );

  }


}

