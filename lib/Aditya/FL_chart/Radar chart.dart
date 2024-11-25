import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RadarChartExample extends StatefulWidget {
  @override
  _RadarChartExampleState createState() => _RadarChartExampleState();
}

class _RadarChartExampleState extends State<RadarChartExample> {
  // Sample data for the Radar Chart
  List<RadarDataSet> dataSets = [
    RadarDataSet(
      fillColor: Colors.blue.withOpacity(0.5),
      borderColor: Colors.blue,
      entryRadius: 3,
      dataEntries: [
        RadarEntry(value: 3),
        RadarEntry(value: 4),
        RadarEntry(value: 2),
        RadarEntry(value: 5),
        RadarEntry(value: 3),
      ],
    ),
    RadarDataSet(
      fillColor: Colors.red.withOpacity(0.5),
      borderColor: Colors.red,
      entryRadius: 3,
      dataEntries: [
        RadarEntry(value: 4),
        RadarEntry(value: 3),
        RadarEntry(value: 5),
        RadarEntry(value: 2),
        RadarEntry(value: 4),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radar Chart Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RadarChart(
            RadarChartData(
              radarShape: RadarShape.polygon,
              tickCount: 5,
              ticksTextStyle: TextStyle(color: Colors.grey),
              dataSets: dataSets,
              radarBorderData: const BorderSide(color: Colors.grey),
              gridBorderData: const BorderSide(color: Colors.grey),
              titlePositionPercentageOffset: 0.15,
              getTitle: (index, angle) {
                // Define labels for each axis
                switch (index) {
                  case 0:
                    return RadarChartTitle(text: 'Category 1');
                  case 1:
                    return RadarChartTitle(text: 'Category 2');
                  case 2:
                    return RadarChartTitle(text: 'Category 3');
                  case 3:
                    return RadarChartTitle(text: 'Category 4');
                  case 4:
                    return RadarChartTitle(text: 'Category 5');
                  default:
                    return const RadarChartTitle(text: '');
                }
              },
              //chartRadiusFactor: 0.7, // Adjusts the size of the Radar Chart
            ),
          ),
        ),
      ),
    );
  }
}
