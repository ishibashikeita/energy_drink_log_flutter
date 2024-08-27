import 'package:energy_drink_log/View/Component/Record/fl/energy_fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Constant/Enum/energy_drink_enum.dart';
import '../../custom_text.dart';

class EnergyFLCell extends StatelessWidget {
  const EnergyFLCell({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.7,
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.4,
            height: size.width * 0.1,
            child: const Center(
              child: CustomText(
                text: 'エナジーの割合',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width * 0.5,
                  height: size.width * 0.4,
                  child: EnergyFLChart(
                    radius: size.width * 0.4 / 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    color: EnergyDrinkType('monster').color(),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  CustomText(
                                    text: EnergyDrinkType('monster').titleEn(),
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  CustomText(
                                    text: '10本',
                                    fontSize: 16,
                                  ),
                                  CustomText(
                                    text: ' (60%)',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    color: EnergyDrinkType('redBull').color(),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  CustomText(
                                    text: EnergyDrinkType('redBull').titleEn(),
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  CustomText(
                                    text: '10本',
                                    fontSize: 16,
                                  ),
                                  CustomText(
                                    text: ' (60%)',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    color: EnergyDrinkType('zone').color(),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  CustomText(
                                    text: EnergyDrinkType('zone').titleEn(),
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  CustomText(
                                    text: '10本',
                                    fontSize: 16,
                                  ),
                                  CustomText(
                                    text: ' (60%)',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
