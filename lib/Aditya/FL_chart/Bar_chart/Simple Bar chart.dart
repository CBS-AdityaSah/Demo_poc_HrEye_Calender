import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimpleBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Bar Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            maxY: 20,
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(toY: 8, color: Colors.blue),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(toY: 12, color: Colors.green),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(toY: 18, color: Colors.red),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
