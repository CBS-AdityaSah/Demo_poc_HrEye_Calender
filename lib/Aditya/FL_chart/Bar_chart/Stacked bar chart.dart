import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StackedBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked Bar Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            maxY: 40,
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(
                  toY: 20,
                  color: Colors.blue,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                  rodStackItems: [
                    BarChartRodStackItem(0, 8, Colors.blue),
                    BarChartRodStackItem(8, 14, Colors.green),
                    BarChartRodStackItem(14, 20, Colors.orange),
                  ],
                ),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                  toY: 30,
                  color: Colors.blue,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                  rodStackItems: [
                    BarChartRodStackItem(0, 10, Colors.red),
                    BarChartRodStackItem(10, 20, Colors.yellow),
                    BarChartRodStackItem(20, 30, Colors.purple),
                  ],
                ),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                  toY: 25,
                  color: Colors.blue,
                  width: 20,
                  borderRadius: BorderRadius.circular(0),
                  rodStackItems: [
                    BarChartRodStackItem(0, 5, Colors.green),
                    BarChartRodStackItem(5, 15, Colors.teal),
                    BarChartRodStackItem(15, 25, Colors.grey),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
