import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class LineChartExample extends StatefulWidget {
  @override
  _LineChartExampleState createState() => _LineChartExampleState();
}

class _LineChartExampleState extends State<LineChartExample> {
  // Sample data for the line chart
  List<FlSpot> _lineChartData = [
    FlSpot(0, 3),
    FlSpot(2, 2),
    FlSpot(3, 5),
    FlSpot(5, 3.1),
    FlSpot(6, 4),
    FlSpot(7, 3),
    FlSpot(8, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart Example'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _updateChartData, // Button to update chart data
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 8,
            minY: 0,
            maxY: 6,
            gridData: FlGridData(show: true),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 22,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    return Text(value.toString(), style: TextStyle(fontSize: 12));
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 28,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    return Text(value.toString(), style: TextStyle(fontSize: 12));
                  },
                ),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: _lineChartData,
                isCurved: true,
                color: Colors.blue,
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to update chart data (example)
  void _updateChartData() {
    setState(() {
      // Here, the chart data is randomly updated
      _lineChartData = [
        FlSpot(0, 4),
        FlSpot(1, 3),
        FlSpot(2, 4),
        FlSpot(3, 5),
        FlSpot(4, 3.8),
        FlSpot(5, 3.5),
        FlSpot(6, 4.2),
        FlSpot(7, 3.5),
        FlSpot(8, 5),
      ];
    });
  }
}
