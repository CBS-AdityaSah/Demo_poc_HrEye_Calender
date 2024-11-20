import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class CircularCharts extends StatefulWidget {
  const CircularCharts({super.key});

  @override
  State<CircularCharts> createState() => _CircularChartsState();
}

class _CircularChartsState extends State<CircularCharts> {

  List chartData=[
    [40,'Rent',Color.fromRGBO(82, 98, 255, 1)],
    [12,'Groceries',Color.fromRGBO(42, 198, 82, 1)],
    [20,'Utilities',Color.fromRGBO(123, 101, 82, 1)],
    [25,'Entertainment',Color.fromRGBO(255, 171, 67, 1)],
    [15,'Transportation',Color.fromRGBO(252, 91, 57, 1)],
    [16,'Others',Color.fromRGBO(139, 135, 130, 1)],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Circular Chart'),
      centerTitle: true,),
      body: Padding(padding: EdgeInsets.only(bottom: 50),
      child: SfCircularChart(
        margin: EdgeInsets.all(0),

        series: [
          PieSeries(
            dataSource: chartData,
            yValueMapper: (data,_)=>data[0],
            xValueMapper: (data,_)=>data[1],
            radius:'70%' ,
            explode: true,// when hover then parts will be shifted up
            pointColorMapper: (data,_)=>data[2],// for color
            dataLabelMapper: (data,_)=>data[0].toString()+'k',
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              textStyle: TextStyle(fontSize: 20,color: Colors.black),
              labelPosition: ChartDataLabelPosition.outside
            ),
          ),
        ],
        legend: Legend(
          isVisible: true,
          position: LegendPosition.bottom,
          orientation: LegendItemOrientation.vertical,
          textStyle: TextStyle(fontSize: 20),
          iconHeight: 20,
          iconWidth: 20

        ),
      ),
      ),

    );
  }
}
