import 'package:energy_drink_log/View/Component/custom_text.dart';
import 'package:energy_drink_log/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class EnergyIndicator extends StatelessWidget {
  EnergyIndicator({super.key, required this.vaildDrink});
  final int vaildDrink;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 20.0,
      percent: 0.3,
      center: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: '10/30',
          ),
          CustomText(
            text: '本',
            fontSize: 10,
          ),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: ColorName.mainColor,
      backgroundColor: ColorName.mainColor.withOpacity(0.3),
    );
  }
}
