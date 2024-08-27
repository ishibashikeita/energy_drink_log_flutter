import 'package:energy_drink_log/Constant/Enum/energy_drink_enum.dart';
import 'package:energy_drink_log/View/Component/Record/indicator/energy_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../custom_cell.dart';
import '../../custom_text.dart';

class DrinkCell extends StatelessWidget {
  const DrinkCell({super.key, required this.drinkType});
  final String drinkType;
  @override
  Widget build(BuildContext context) {
    final EnergyDrinkType type = EnergyDrinkType(drinkType);
    return SizedBox(
      width: 300,
      child: CustomCell(
        content: Container(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorName.mainColor,
                      width: 2,
                    ),
                  ),
                ),
                height: 50,
                width: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    type.image(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: ColorName.mainColor,
                          shape: BoxShape.circle,
                        ),
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        child: type.iconImage(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 170,
                width: 250,
                child: Row(
                  children: [
                    SizedBox(
                      height: 170,
                      width: 150,
                      child: Center(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: EnergyIndicator(
                            vaildDrink: 10,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'カロリー',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  text: '63/300KCAL',
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: '本数',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  text: '10/30本',
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: '総量',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  text: '0.8L',
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
