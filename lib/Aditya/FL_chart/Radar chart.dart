// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
//
// class LineChartSample1 extends StatefulWidget {
//   const LineChartSample1({super.key});
//
//   @override
//   State<StatefulWidget> createState() => LineChartSample1State();
// }
//
// class LineChartSample1State extends State<LineChartSample1> {
//   late bool isShowingMainData;
//
//   @override
//   void initState() {
//     super.initState();
//     isShowingMainData = true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Line Chart Example'),
//       ),
//       body: AspectRatio(
//         aspectRatio: 1.23,
//         child: Stack(
//           children: <Widget>[
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 const SizedBox(
//                   height: 37,
//                 ),
//                 const Text(
//                   'Monthly Sales',
//                   style: TextStyle(
//                     color: AppColors.primary,
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 2,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 37,
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 16, left: 6),
//                     child: _LineChart(isShowingMainData: isShowingMainData),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//               ],
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.refresh,
//                 color: Colors.blue.withOpacity(isShowingMainData ? 1.0 : 0.5),
//               ),
//               onPressed: () {
//                 setState(() {
//                   isShowingMainData = !isShowingMainData;
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class _LineChart extends StatelessWidget {
//   const _LineChart({required this.isShowingMainData});
//
//   final bool isShowingMainData;
//
//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       isShowingMainData ? sampleData1 : sampleData2,
//       duration: const Duration(milliseconds: 250),
//     );
//   }
//
//   LineChartData get sampleData1 => LineChartData(
//     lineBarsData: [
//       LineChartBarData(
//         isCurved: true,
//         color: AppColors.contentColorGreen,
//         belowBarData: BarAreaData(show: false),
//         spots: const [
//           FlSpot(0, 3),
//           FlSpot(1, 4),
//           FlSpot(2, 2),
//           FlSpot(3, 5),
//           FlSpot(4, 3),
//           FlSpot(5, 4),
//           FlSpot(6, 5),
//         ],
//       ),
//     ],
//   );
//
//   LineChartData get sampleData2 => LineChartData(
//     lineBarsData: [
//       LineChartBarData(
//         isCurved: true,
//         color: AppColors.contentColorPink,
//         belowBarData: BarAreaData(show: false),
//         spots: const [
//           FlSpot(0, 1),
//           FlSpot(1, 3),
//           FlSpot(2, 4),
//           FlSpot(3, 2),
//           FlSpot(4, 4),
//           FlSpot(5, 3),
//           FlSpot(6, 1),
//         ],
//       ),
//     ],
//   );
// }
//
// class AppColors {
//   static const primary = Color(0xFF4CAF50); // Green color
//   static const contentColorGreen = Color(0xFF4CAF50);
//   static const contentColorPink = Color(0xFFE91E63);
//   static const contentColorCyan = Color(0xFF00BCD4);
// }



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
