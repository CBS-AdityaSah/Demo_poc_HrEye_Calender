import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class LineChartExample1 extends StatefulWidget {
  const LineChartExample1({super.key});

  @override
  State<LineChartExample1> createState() => _LineChartExample1State();
}

class _LineChartExample1State extends State<LineChartExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(aspectRatio: 2.0,
        child:LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                show: true,// line invisible/visible
                spots: const[
                  FlSpot(0, 0),
                  FlSpot(1, 6),
                  FlSpot(2, 1),
                  FlSpot(3, 9),
                  FlSpot(4, 0),
                  FlSpot(5, 9),
                  FlSpot(6, 2),
                ],
                //color: Colors.red,
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.pinkAccent,
                  Colors.lightBlueAccent,
                ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
                barWidth: 4, //thikness of line
                isCurved: true,
                //curveSmoothness: 0.5,
                preventCurveOverShooting: true, // fixed  line over the border
               // isStrokeCapRound: true,
                isStrokeJoinRound: true,
                belowBarData: BarAreaData(
                  show: true ,// for shadow
                  color: Colors.red.withOpacity(0.3),
                ),
                aboveBarData: BarAreaData(
                  show: true ,// for above shadow
                  color: Colors.green.withOpacity(0.3),

                ),
                dotData: FlDotData(
                  show: true,
                  checkToShowDot: (spot,barData){
                    return true; //dot at all points
                   // return spot.x==1 || spot.y==1;

                  },
                  getDotPainter: (
                      FlSpot spot,
                      double xPercentage,
                      LineChartBarData bar,
                      int index, {
                      double? size,
                      }){
                    return FlDotCirclePainter(
                     // size: 40,
                      color: [
                        Colors.red,
                        Colors.blue,
                        Colors.green,
                      ][index %3]
                    );
                  }
                ),
                //showingIndicators: [1,2,3],
                //dashArray: [18,4], // dash
                shadow: Shadow(
                  color: Colors.yellowAccent,
                  blurRadius: 4
                ),
                isStepLineChart: true, //for straight line chart
                lineChartStepData: LineChartStepData(
                  stepDirection:1
                 )
              ),
              LineChartBarData(
                show: true,// line invisible/visible
                spots: const[
                  FlSpot(0, 0),
                  FlSpot(1, 3),
                  FlSpot(2, 2),
                  FlSpot(3, 7),
                  FlSpot(4, 4),
                  FlSpot(5, 2),
                  FlSpot(6, 5),
                ],
                //color: Colors.red,
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.pinkAccent,
                  Colors.lightBlueAccent,
                ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
                barWidth: 4, //thikness of line
                isCurved: true,
                //curveSmoothness: 0.5,
                preventCurveOverShooting: true, // fixed  line over the border
                isStrokeCapRound: true,
                isStrokeJoinRound: true,

                // dotData: FlDotData(
                //   show: true,
                //   checkToShowDot: (spot,barData){
                //     return true; //dot at all points
                //    // return spot.x==1 || spot.y==1;
                //
                //   },
                //   getDotPainter: (
                //       FlSpot spot,
                //       double xPercentage,
                //       LineChartBarData bar,
                //       int index, {
                //       double? size,
                //       }){
                //     return FlDotCirclePainter(
                //      // size: 40,
                //       color: [
                //         Colors.red,
                //         Colors.blue,
                //         Colors.green,
                //       ][index %3]
                //     );
                //   }
                // ),
                //showingIndicators: [1,2,3],
                //dashArray: [18,4], // dash
                shadow: Shadow(
                  color: Colors.yellowAccent,
                  blurRadius: 4
                ),
                //isStepLineChart: true, //for straight line chart
                lineChartStepData: LineChartStepData(
                  stepDirection:1
                )
              ),
            ],
            //lineTouchData: LineTouchData(enabled: false)
            betweenBarsData:[
              BetweenBarsData(fromIndex: 0, toIndex: 1,
              color: Colors.black87)
            ],
            // set titles at all sides
            titlesData: FlTitlesData(
              show: true,
              rightTitles: AxisTitles(
                axisNameWidget: Text("Right"),
                axisNameSize: 30
              ),
              leftTitles: AxisTitles(
                  axisNameWidget: Text("Left"),
                  axisNameSize: 30
              ),



            )
          )
        ) ,),

      ),
    );
  }
}
