import 'package:day_11/bar%20graph/bar_data.dart';
import 'package:day_11/bar%20graph/individual_bar_graph.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  final List pet;
  const MyBarChart({
    super.key,
    required this.pet,
  });

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      cats: pet[0],
      dogs: pet[1],
      birds: pet[2],
      lizards: pet[3],
    );

    myBarData.initializeBardata();
    return BarChart(BarChartData(
        titlesData: titlesData,
        maxY: 8,
        minY: 0,
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(toY: data.y),
              ]),
            )
            .toList()));
  }

  Widget getTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'Cats';
        break;
      case 2:
        text = 'Birds';
        break;
      case 3:
        text = 'Lizards';
        break;
      case 4:
        text = 'Dogs';
        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(
        text,
      ),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: true),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );
}
