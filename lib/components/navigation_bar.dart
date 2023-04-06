import 'package:flutter/material.dart';

import 'navigation_bar_item.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFD8D1DD), width: 1.0),
        ),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 75.0,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(
                top: 4.0, right: 10.0, left: 10.0, bottom: 23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavigationBarCustomItem(
                  title: "Главная",
                  isSelected: _selectedIndex == 0,
                  unSelectIcon: 'assets/icons/navigate_icon_unselect-1.svg',
                  selectIcon: 'assets/icons/navigate_icon_select-1.svg',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                BottomNavigationBarCustomItem(
                  title: "Мед карта",
                  isSelected: _selectedIndex == 1,
                  unSelectIcon: 'assets/icons/navigate_icon_unselect-2.svg',
                  selectIcon: 'assets/icons/navigate_icon_select-2.svg',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                BottomNavigationBarCustomItem(
                  title: "Тракер",
                  isSelected: _selectedIndex == 2,
                  unSelectIcon: 'assets/icons/navigate_icon_unselect-3.svg',
                  selectIcon: 'assets/icons/navigate_icon_select-3.svg',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                BottomNavigationBarCustomItem(
                  title: "Чат",
                  isSelected: _selectedIndex == 3,
                  unSelectIcon: 'assets/icons/navigate_icon_unselect-4.svg',
                  selectIcon: 'assets/icons/navigate_icon_select-4.svg',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
                BottomNavigationBarCustomItem(
                  title: "Настройки",
                  isSelected: _selectedIndex == 4,
                  unSelectIcon: 'assets/icons/navigate_icon_unselect-5.svg',
                  selectIcon: 'assets/icons/navigate_icon_select-5.svg',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
