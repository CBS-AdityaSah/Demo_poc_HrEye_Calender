import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'CustomBadge.dart';

class SimplePieChart extends StatefulWidget {
  const SimplePieChart({super.key});

  @override
  State<SimplePieChart> createState() => _SimplePieChartState();
}

class _SimplePieChartState extends State<SimplePieChart> {
  int touchedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
      
    );
  }

  PreferredSizeWidget _appBar(){
    return AppBar(
      centerTitle: true,
      title: Text("Simple Pie Chart"),
    );
  }

  Widget _buildUI(){
    return Center(
      child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event,pieTouchResponse){
              setState(() {
                if(!event.isInterestedForInteractions || pieTouchResponse ==null || pieTouchResponse.touchedSection==null){
                  touchedIndex =-1;
                  return;
                }
                touchedIndex=pieTouchResponse.touchedSection!.touchedSectionIndex;

              });
              }
            ),
        sections: piechartSection(),
        sectionsSpace: 2,
        centerSpaceRadius: 0
      )),
    );

  }

  List<PieChartSectionData> piechartSection(){
    List<Color> sectionColors =[
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.green,
    ];

    List<IconData> sectionIcons=[
      Icons.business,
      Icons.shopping_bag,
      Icons.local_grocery_store,
      Icons.house,
    ];


    return List.generate(4, (i){
      double Value=(i+1)*10;
      final isTouched=i==touchedIndex;
      final radius=isTouched ? 130.0 : 100.0;
      final fontsize=isTouched ?24.0:16.0;
      final widgetSize=isTouched ?60.0:40.0;

      return PieChartSectionData(
        color: sectionColors[i],
        value: Value,
        title: '$Value%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
          badgeWidget:CustomBadge(
              icon:sectionIcons[i],
              size:widgetSize,
              borderColor:Colors.black),
          badgePositionPercentageOffset: 0.98
      );
    });
  }


}
