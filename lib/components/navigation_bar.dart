import 'package:flutter/material.dart';
import 'package:my_medical_card/screens/doctor/doctor_screen.dart';
import 'package:my_medical_card/screens/home/home_screen.dart';

import 'navigation_bar_item.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({
    Key? key,
    required this.setScreen,
    required this.BarItemList,
  }) : super(key: key);

  final Function setScreen;
  final List BarItemList;

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  String _selectedIndex = 'Главная';

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
              children: widget.BarItemList.map(
                (data) => BottomNavigationBarCustomItem(
                  title: data.title,
                  unSelectIcon: data.unselectedIcon,
                  selectIcon: data.selectedIcon,
                  isSelected: _selectedIndex == data.title,
                  onPressed: () {
                    print(data);
                    widget.setScreen(data.id);
                    setState(() {
                      _selectedIndex = data.title;
                    });
                  },
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
