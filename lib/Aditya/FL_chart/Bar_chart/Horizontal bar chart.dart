import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HorizontalBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Bar Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.center,
            maxY: 20,
            barTouchData: BarTouchData(enabled: false),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            gridData: FlGridData(show: false),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(
                  toY: 8,
                  color: Colors.blue,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                ),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                  toY: 12,
                  color: Colors.green,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 16,
                  color: Colors.orange,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
