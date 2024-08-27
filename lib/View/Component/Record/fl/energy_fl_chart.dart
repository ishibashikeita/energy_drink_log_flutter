import 'package:energy_drink_log/Constant/Enum/energy_drink_enum.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnergyFLChart extends StatelessWidget {
  const EnergyFLChart({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 0,
        startDegreeOffset: 270, // 12時の位置からスタート
        sections: [
          PieChartSectionData(
            color: EnergyDrinkType("monster").color(),
            value: 10,
            radius: radius,
            showTitle: false,
          ),
          PieChartSectionData(
            color: EnergyDrinkType("redBull").color(),
            value: 10,
            radius: radius,
            showTitle: false,
          ),
          PieChartSectionData(
            color: EnergyDrinkType("zone").color(),
            value: 10,
            radius: radius,
            showTitle: false,
          ),
        ],
      ),
    );
  }
}
