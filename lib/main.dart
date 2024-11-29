import 'package:flutter/material.dart';

import 'Aditya/FL_chart/Bar_chart/Bar Chart with Animations.dart';
import 'Aditya/FL_chart/Bar_chart/Grouped Bar chart.dart';
import 'Aditya/FL_chart/Bar_chart/Horizontal bar chart.dart';
import 'Aditya/FL_chart/Bar_chart/Simple Bar chart.dart';
import 'Aditya/FL_chart/Bar_chart/Stacked bar chart.dart';
import 'Aditya/FL_chart/Fl_chart_homeScreen.dart';
import 'Aditya/FL_chart/Line_chart/FL_line chart 1.dart';
import 'Aditya/FL_chart/Radar chart.dart';
import 'Aditya/FL_chart/pie_chart/Fl_pie chart.dart';
import 'Aditya/FL_chart/pie_chart/simple_pie chart.dart';
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
      home: FlChartHomescreen(),
      //home: LineChartExample1(),
      //home: MyHomePage(title: 'Easy Date Timeline 😊',),
      //home: DateTimeLineDemo(),
    );

  }


}

