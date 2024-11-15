import 'package:flutter/material.dart';

import 'Aditya/HomePage.dart';
import 'CustomHorizontalCalendar.dart';
import 'CustomHorizontalCalendarMonth.dart';
import 'DateTimelineDemo.dart';

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
      //home: CustomHorizontalCalendarMonth(),
      home: MyHomePage(title: 'Easy Date Timeline 😊',),
      //home: DateTimeLineDemo(),
    );

  }


}

