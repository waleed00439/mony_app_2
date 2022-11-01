import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../constFiles/colors.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        padding:
            const EdgeInsets.only(left: 30, right: 23, top: 100, bottom: 10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 30,
                offset: const Offset(30, 0)
                // offset: const Offset(0, 0),
                ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SfCartesianChart(
          // crosshairBehavior:CrosshairBehavior,
          enableMultiSelection: false,
          enableAxisAnimation: true,
          palette: const <Color>[expenseRed, incomeGreen],
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(),
          series: <ChartSeries>[
            ColumnSeries<SaleData, String>(
                dataSource: gitInfo(),
                xValueMapper: (SaleData sales, _) => sales.x,
                yValueMapper: (SaleData sales, _) => sales.y,
                dataLabelSettings: const DataLabelSettings(isVisible: true)),
            ColumnSeries<SaleData, String>(
                dataSource: getSaving(),
                xValueMapper: (SaleData sales, _) => sales.x,
                yValueMapper: (SaleData sales, _) => sales.y,
                dataLabelSettings: const DataLabelSettings(isVisible: true))
          ],
        ),
      )
    ]);
  }
}

class SaleData {
  String x;

  int y;
  SaleData(this.x, this.y);
}

dynamic gitInfo() {
  List<SaleData> columnData = <SaleData>[
    SaleData("Jan", Random().nextInt(40)),
    SaleData("May", Random().nextInt(50)),
    SaleData("Apr", Random().nextInt(60)),
    SaleData("Mar", Random().nextInt(70)),
  ];

  return columnData;
}

dynamic getSaving() {
  List<SaleData> columnData = <SaleData>[
    SaleData("Jan", Random().nextInt(70)),
    SaleData("May", Random().nextInt(30)),
    SaleData("Apr", Random().nextInt(20)),
    SaleData("Mar", Random().nextInt(40)),
  ];

  return columnData;
}
