import 'package:energy_drink_log/Controller/bottom_tab_controller.dart';
import 'package:energy_drink_log/View/Component/custom_cell.dart';
import 'package:energy_drink_log/View/Component/custom_text.dart';
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
      body: Container(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child: CustomCell(
                content: CustomText(text: '記録'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: CustomCell(
                content: CustomText(text: '記録'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: CustomCell(
                content: CustomText(text: '記録'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: CustomCell(
                content: CustomText(text: '記録'),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          NavigationBar(
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 40,
                    ),
                    CustomText(
                      text: '記録',
                      color: Colors.white,
                      fontSize: 12,
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
