
import 'package:demoprojectcalender/Aditya/FL_chart/pie_chart/Fl_pie%20chart.dart';
import 'package:flutter/material.dart';

import 'Fl_bar_chart.dart';
import 'Line_chart.dart';
import 'Radar chart.dart';

class FlChartHomescreen extends StatefulWidget {
  const FlChartHomescreen({super.key});

  @override
  State<FlChartHomescreen> createState() => _FlChartHomescreenState();
}

class _FlChartHomescreenState extends State<FlChartHomescreen> {
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
                  MaterialPageRoute(builder: (context) => BarChartExample()),
                );
              },
              child: const Text("Fl_bar Chart",style: TextStyle(color: Colors.white),),
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
                  MaterialPageRoute(builder: (context) => LineChartExample()),
                );
              },
              child: const Text("Fl_line Chart",style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => LineChartSample1()),
                );
              },
              child: const Text("Radar Chart",style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
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
              child: const Text("Pie Chart",style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

