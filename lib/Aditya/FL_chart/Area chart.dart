import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AreaChartExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area Chart Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 1.5),
                  FlSpot(2, 1.4),
                  FlSpot(3, 3 ),
                  FlSpot(4, 2),
                  FlSpot(5, 2.2),
                  FlSpot(6, 1.8),
                ],
                isCurved: true,
                color: Colors.blue.withOpacity(0.5),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blue.withOpacity(0.3),
                ),
                dotData: FlDotData(show: false),
                isStrokeCapRound: true,
                barWidth: 4,
              ),
            ],
            minX: 0,
            maxX: 6,
            minY: 0,
            maxY: 4,
          ),
        ),
      ),
    );
  }
}

//void main() => runApp(MaterialApp(home: AreaChartExample()));
