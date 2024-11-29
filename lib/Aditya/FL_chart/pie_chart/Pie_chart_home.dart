
import 'package:demoprojectcalender/Aditya/FL_chart/pie_chart/Fl_pie%20chart.dart';
import 'package:demoprojectcalender/Aditya/FL_chart/pie_chart/simple_pie%20chart.dart';
import 'package:flutter/material.dart';

import '../../Graph/Chart_homeScreen.dart';
import '../../Graph/pie_chart.dart';


class FlPieChartHomescreen extends StatefulWidget {
  const FlPieChartHomescreen({super.key});

  @override
  State<FlPieChartHomescreen> createState() => _FlPieChartHomescreenState();
}

class _FlPieChartHomescreenState extends State<FlPieChartHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FL_Chart Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimplePieChart()),
                );
              },
              child: const Text("Pie Chart",style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PieChartExample()),
                );
              },
              child: const Text("Pie Chart 2",style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChartHomescreen()),
                );
              },
              child: const Text(" Syncfusion Chart",style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.brown,
            //     fixedSize: const Size(200, 50),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => SimplePieChart()),
            //     );
            //   },
            //   child: const Text("Pie Chart",style: TextStyle(color: Colors.white)),
            // ),
          ],
        ),
      ),
    );
  }
}

