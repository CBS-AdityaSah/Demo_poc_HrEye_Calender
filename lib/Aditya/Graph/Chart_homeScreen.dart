import 'package:demoprojectcalender/Aditya/Graph/pie_chart.dart';
import 'package:flutter/material.dart';

import 'Doughnut_chart.dart';
import 'RadialBar_chart.dart';

class ChartHomescreen extends StatefulWidget {
  const ChartHomescreen({super.key});

  @override
  State<ChartHomescreen> createState() => _ChartHomescreenState();
}

class _ChartHomescreenState extends State<ChartHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart Home Screen"),
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
                  MaterialPageRoute(builder: (context) => CircularCharts()),
                );
              },
              child: const Text("Circular Chart",style: TextStyle(color: Colors.white),),
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
                  MaterialPageRoute(builder: (context) => RadialbarChart()),
                );
              },
              child: const Text("Radial Chart",style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => DoughnutChart()),
                );
              },
              child: const Text("Doughnut Chart",style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

