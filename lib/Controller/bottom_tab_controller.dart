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
      NavigationDestination(icon: Icon(Icons.home), label: 'ホーム'),
      SizedBox(width: 0),
      NavigationDestination(icon: Icon(Icons.settings), label: '設定'),
    ]);
    return items;
  }

  void changeIndex(int index) {
    Log.echo('BottomTabController.changeIndex: $index');
    currentIndex = index;
    notifyListeners();
  }
}
