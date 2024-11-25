import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartExample extends StatefulWidget {
  @override
  _PieChartExampleState createState() => _PieChartExampleState();
}

class _PieChartExampleState extends State<PieChartExample> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Pie Chart Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Simple Pie Chart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: _getSimplePieSections(),
                        centerSpaceRadius: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Pie Chart with Labels',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: _getLabeledPieSections(),
                        centerSpaceRadius: 30,
                        sectionsSpace: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Pie Chart with Custom Colors',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: _getCustomColorPieSections(),
                        centerSpaceRadius: 40,
                        sectionsSpace: 4,
                        pieTouchData: PieTouchData(
                          touchCallback: (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method for Simple Pie Sections
  List<PieChartSectionData> _getSimplePieSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 40,
        title: 'A',
        radius: 50,
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 30,
        title: 'B',
        radius: 50,
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: 'C',
        radius: 50,
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 10,
        title: 'D',
        radius: 50,
      ),
    ];
  }

  // Method for Pie Sections with Labels
  List<PieChartSectionData> _getLabeledPieSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 25,
        title: '25%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 35,
        title: '35%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.purple,
        value: 25,
        title: '25%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.teal,
        value: 15,
        title: '15%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
    ];
  }

  // Method for Pie Sections with Custom Colors and Animation
  List<PieChartSectionData> _getCustomColorPieSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 16;
      final double radius = isTouched ? 70 : 60;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.deepOrangeAccent,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.lightBlueAccent,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.pinkAccent,
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.greenAccent,
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
