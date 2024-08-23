import 'package:energy_drink_log/Controller/bottom_tab_controller.dart';
import 'package:flutter/material.dart';

class BottomTabBarView extends StatelessWidget {
  const BottomTabBarView({super.key});

  BottomTabBarContoller get controller => BottomTabBarContoller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
        ],
        currentIndex: controller.currentIndex,
        onTap: (value) {
          controller.currentIndex = value;
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}
