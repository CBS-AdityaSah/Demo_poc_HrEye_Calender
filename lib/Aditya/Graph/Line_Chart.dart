import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  // Tooltip behavior controller
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    // Initialize the tooltip behavior
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010), 15, Colors.blue),
      SalesData(DateTime(2011), 28, Colors.green),
      SalesData(DateTime(2012), 34, Colors.orange),
      SalesData(DateTime(2013), 32, Colors.purple),
      SalesData(DateTime(2014), 40, Colors.red)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Data Chart with Different Colors'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SfCartesianChart(
            primaryXAxis: DateTimeAxis(),
            tooltipBehavior: _tooltipBehavior,
            series: <CartesianSeries>[
              // Renders line chart with custom point colors
              LineSeries<SalesData, DateTime>(
                dataSource: chartData,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                // Assign colors to each point
                pointColorMapper: (SalesData sales, _) => sales.color,
                enableTooltip: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.color);
  final DateTime year;
  final double sales;
  final Color color;
}
