import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GroupedBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped Bar Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            maxY: 20,
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(toY: 8, color: Colors.blue, width: 15),
                BarChartRodData(toY: 10, color: Colors.green, width: 15),
                BarChartRodData(toY: 6, color: Colors.brown, width: 15),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(toY: 14, color: Colors.orange, width: 15),
                BarChartRodData(toY: 12, color: Colors.purple, width: 15),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(toY: 6, color: Colors.red, width: 15),
                BarChartRodData(toY: 16, color: Colors.teal, width: 15),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
