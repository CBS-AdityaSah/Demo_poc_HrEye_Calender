import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnimatedBarChart extends StatefulWidget {
  @override
  _AnimatedBarChartState createState() => _AnimatedBarChartState();
}

class _AnimatedBarChartState extends State<AnimatedBarChart> {
  // Sample data
  List<BarChartGroupData> barData = [
    BarChartGroupData(x: 0, barRods: [
      BarChartRodData(toY: 8, color: Colors.blue),
    ]),
    BarChartGroupData(x: 1, barRods: [
      BarChartRodData(toY: 12, color: Colors.green),
    ]),
    BarChartGroupData(x: 2, barRods: [
      BarChartRodData(toY: 18, color: Colors.red),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bar Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            maxY: 20,
            barGroups: barData,
            barTouchData: BarTouchData(enabled: true),
            titlesData: FlTitlesData(show: true),
            gridData: FlGridData(show: false),
          ),
          swapAnimationDuration: Duration(seconds: 1), // Animation duration
          swapAnimationCurve: Curves.easeInOut,          // Animation curve
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example to trigger new animation by modifying data
          setState(() {
            // Randomly modify the bar chart data to demonstrate animation
            barData = [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(toY: 14, color: Colors.blue),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(toY: 10, color: Colors.green),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(toY: 16, color: Colors.red),
              ]),
            ];
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
