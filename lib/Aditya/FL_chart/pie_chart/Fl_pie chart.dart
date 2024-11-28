import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartExample extends StatefulWidget {
  const PieChartExample({super.key});

  @override
  _PieChartExampleState createState() => _PieChartExampleState();
}

class _PieChartExampleState extends State<PieChartExample> {
  int touchedIndex = -1;
  int? _hoveredIndex;

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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: _getLegendItems(),
                  ),
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: _getSimplePieSections(),
                        centerSpaceRadius: 0,           // Space in the center of the pie chart
                        centerSpaceColor: Colors.white,  // Color of the center space
                        sectionsSpace: 2,                // Space between sections
                        startDegreeOffset: 0,            // Starting angle of the pie chart
                        pieTouchData: PieTouchData(
                          touchCallback: (FlTouchEvent event, pieTouchResponse) {
                            if (pieTouchResponse != null && pieTouchResponse.touchedSection != null) {
                              setState(() {
                                // Update hovered index based on the touched section
                                _hoveredIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                              });
                            } else {
                              // Reset hovered index when no section is touched
                              setState(() {
                                _hoveredIndex = 0;
                              });
                            }
                          },
                        ),
                        borderData: FlBorderData(
                          show: true,                    // Display border around the pie chart
                          border: Border.all(
                            color: Colors.red,          // Border color
                            width: 5,                    // Border width
                          ),
                        ),
                        titleSunbeamLayout: true,       // Specify if titles should follow sunbeam layout
                       // swapAnimationDuration: Duration(milliseconds: 800),  // Animation duration
                       // swapAnimationCurve: Curves.easeInOut,                // Animation curve
                      ),
                    ),

                  )
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _getLegendItems1(),
                  ),

                  Expanded(
                    child: PieChart(
                      // Duration duration = const Duration(milliseconds: 500),
                      PieChartData(
                        sections: _getLabeledPieSections(),
                        centerSpaceRadius: 50,
                        sectionsSpace: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            // Expanded(
            //   child: Column(
            //     children: [
            //       Text(
            //         'Pie Chart with Custom Colors',
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(height: 20),
            //       Expanded(
            //         child: PieChart(
            //           PieChartData(
            //             sections: _getCustomColorPieSections(),
            //             centerSpaceRadius: 40,
            //             sectionsSpace: 4,
            //             pieTouchData: PieTouchData(
            //               touchCallback: (FlTouchEvent event, pieTouchResponse) {
            //                 setState(() {
            //                   if (!event.isInterestedForInteractions ||
            //                       pieTouchResponse == null ||
            //                       pieTouchResponse.touchedSection == null) {
            //                     touchedIndex = -1;
            //                     return;
            //                   }
            //                   touchedIndex = pieTouchResponse
            //                       .touchedSection!.touchedSectionIndex;
            //                 });
            //               },
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getLegendItems() {
    final List<String> labels = ['A - 40%', 'B - 30%', 'C - 20%', 'D - 10%'];
    final List<Color> colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.yellow,
    ];

    return List.generate(labels.length, (index) {
      return Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: colors[index],
          ),
          SizedBox(width: 8),
          Text(labels[index]),
        ],
      );
    });
  }


  List<Widget> _getLegendItems1() {
    final List<String> labels = ['A - 25%', 'B - 35%', 'C - 25%', 'D - 15%'];
    final List<Color> colors = [
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    return List.generate(labels.length, (index) {
      return Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: colors[index],
          ),
          SizedBox(width: 8),
          Text(labels[index]),
        ],
      );
    });
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
        title: 'A \n 25%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 35,
        title: 'B \n 35%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.purple,
        value: 25,
        title: 'C \n 25%',
        radius: 60,
        titleStyle: TextStyle(fontSize: 14, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.teal,
        value: 15,
        title: 'D \n 15%',
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
