import 'package:carousel_slider/carousel_slider.dart';
import 'package:energy_drink_log/View/Component/Record/indicator/drink_cell.dart';
import 'package:energy_drink_log/View/Component/Record/fl/energy_fl_chart.dart';
import 'package:energy_drink_log/View/Component/Record/funciton/function_cell.dart';
import 'package:energy_drink_log/View/Component/custom_cell.dart';
import 'package:energy_drink_log/View/Component/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Constant/Enum/energy_drink_enum.dart';
import '../Component/Record/fl/energy_fl_cell.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            /// スライダー部分
            CarouselSlider(
              items: const [
                DrinkCell(drinkType: 'monster'),
                DrinkCell(drinkType: 'redBull'),
                DrinkCell(drinkType: 'zone'),
              ],
              options: CarouselOptions(
                height: 250,
                initialPage: 0,
                autoPlay: false, //自動でスライドしてくれるか
                enableInfiniteScroll: false, //最後のカードから最初のカードへの遷移
                autoPlayInterval: const Duration(seconds: 1), //カードのインターバル
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                //スライドが始まって終わるまでの時間
              ),
            ),

            /// 機能タブ部分
            const FunctionCell(),

            ///　割合円グラフ部分
            const EnergyFLCell(),
          ],
        ),
      ),
    );
  }
}
