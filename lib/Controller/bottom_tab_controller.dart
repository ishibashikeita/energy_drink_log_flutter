import 'package:energy_drink_log/Controller/Profile/profile_controller.dart';
import 'package:energy_drink_log/View/Record/record_view.dart';
import 'package:energy_drink_log/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Service/log_service.dart';

/// BottomTabの選択状態を管理するProvider
final bottomTabProvider = ChangeNotifierProvider<BottomTabBarContoller>(
  (ref) => BottomTabBarContoller(),
);

class BottomTabBarContoller extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> getBottomNavigationBarItems() {
    List<Widget> items = [];
    items.addAll([
      NavigationDestination(
          icon: Assets.images.kirokuIcon.image(
              width: currentIndex == 0 ? 35 : 30,
              height: currentIndex == 0 ? 35 : 30),
          label: '記録'),
      SizedBox(width: 0),
      NavigationDestination(
          icon: Assets.images.userIcon.image(
              width: currentIndex == 2 ? 40 : 35,
              height: currentIndex == 2 ? 40 : 35),
          label: 'プロフィール'),
    ]);
    return items;
  }

  /// Scaffoldのbodyに渡すWidgetのリストをViewに渡す
  Widget getBodys(int index) {
    List<Widget> bodys = [
      const RecordPage(),
      const Placeholder(),
      const ProfilePage(),
    ];

    return bodys[index];
  }

  void changeIndex(int index) {
    Log.echo('BottomTabController.changeIndex: $index');
    currentIndex = index;
    notifyListeners();
  }
}
