import 'package:flutter/material.dart';
import 'Bar Chart with Animations.dart';
import 'Grouped Bar chart.dart';
import 'Simple Bar chart.dart';
import 'Stacked bar chart.dart';

class FlBarChartHomescreen extends StatefulWidget {
  const FlBarChartHomescreen({super.key});

  @override
  State<FlBarChartHomescreen> createState() => _FlBarChartHomescreenState();
}

class _FlBarChartHomescreenState extends State<FlBarChartHomescreen> {
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
                  MaterialPageRoute(builder: (context) => SimpleBarChart()),
                );
              },
              child: const Text("Simple Bar Chart",style: TextStyle(color: Colors.white),),
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
                  MaterialPageRoute(builder: (context) => GroupedBarChart()),
                );
              },
              child: const Text("Grouped Bar Chart",style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => StackedBarChart()),
                );
              },
              child: const Text("Stacked Bar Chart",style: TextStyle(color: Colors.white)),
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
                  MaterialPageRoute(builder: (context) => AnimatedBarChart()),
                );
              },
              child: const Text("Animated Bar Chart",style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

