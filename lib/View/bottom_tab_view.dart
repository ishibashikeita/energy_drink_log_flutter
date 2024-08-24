import 'package:energy_drink_log/Controller/bottom_tab_controller.dart';
import 'package:energy_drink_log/View/Component/custom_cell.dart';
import 'package:energy_drink_log/View/Component/custom_text.dart';
import 'package:energy_drink_log/gen/assets.gen.dart';
import 'package:energy_drink_log/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomTabBarView extends ConsumerWidget {
  const BottomTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BottomTabBarContoller controller = ref.watch(bottomTabProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //下線を表示
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: ColorName.mainColor,
            height: 2.0,
          ),
        ),
      ),
      backgroundColor: ColorName.scaffoldBackGround,
      body: controller.getBodys(controller.currentIndex),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          NavigationBar(
            indicatorColor: Colors.transparent,
            indicatorShape: const CircleBorder(),
            destinations: controller.getBottomNavigationBarItems(),
            selectedIndex: controller.currentIndex,
            onDestinationSelected: (value) =>
                ref.read(bottomTabProvider.notifier).changeIndex(value),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          Positioned(
            top: -30,
            child: GestureDetector(
              onTap: () {
                // カメラを起動する処理
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorName.mainColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.yomitoriIcon.image(width: 40, height: 40),
                    const CustomText(
                      text: '読み取り',
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
