import 'package:flutter/material.dart';
import 'package:my_medical_card/screens/home/home_screen.dart';
import 'package:my_medical_card/screens/my_med_card/my_med_card_screen.dart';

import 'components/navigation_bar.dart';

class BarItem {
  final int id;
  final String title;
  final String unselectedIcon;
  final String selectedIcon;
  final Widget screen;

  BarItem(
      this.id, this.title, this.unselectedIcon, this.selectedIcon, this.screen);
}

List<BarItem> BarItemList = [
  BarItem(
    0,
    'Главная',
    'assets/icons/navigate_icon_unselect-1.svg',
    'assets/icons/navigate_icon_select-1.svg',
    const HomeScreen(),
  ),
  BarItem(
    1,
    'Мед карта',
    'assets/icons/navigate_icon_unselect-2.svg',
    'assets/icons/navigate_icon_select-2.svg',
    const MyMedCardScreen(),
  ),
  BarItem(
    2,
    'Тракер',
    'assets/icons/navigate_icon_unselect-3.svg',
    'assets/icons/navigate_icon_select-3.svg',
    const HomeScreen(),
  ),
  BarItem(
    3,
    'Чат',
    'assets/icons/navigate_icon_unselect-4.svg',
    'assets/icons/navigate_icon_select-4.svg',
    const HomeScreen(),
  ),
  BarItem(
    4,
    'Настройки',
    'assets/icons/navigate_icon_unselect-5.svg',
    'assets/icons/navigate_icon_select-5.svg',
    const HomeScreen(),
  ),
];

class MainScaffold extends StatelessWidget {
  MainScaffold({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: controller,
        children: BarItemList.map(
          (data) => SingleChildScrollView(
            child: data.screen,
          ),
        ).toList(),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        setScreen: (id) {
          // controller.animateToPage(id, duration: Duration(milliseconds: 300), curve: Curves.decelerate);
          controller.jumpToPage(id);
        },
        BarItemList: BarItemList,
      ),
    );
  }
}
