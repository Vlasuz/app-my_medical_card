import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/app_title.dart';
import '../../components/miltiple_block.dart';
import '../../components/switcher_item.dart';
import '../../contsants.dart';
import 'components/button_with_arrow.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPurpleColor,
        child: Column(
          children: [
            const SizedBox(
              height: 58.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30.0,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                    ),
                  ),
                  const Text(
                    'Уведомление',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 30.0,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 220.0,
              child: Stack(
                children: [
                  Positioned(
                    left: -50.0,
                    right: -50.0,
                    bottom: -30.0,
                    child: SizedBox(
                      height: 200.0,
                      child: SvgPicture.asset(
                          'assets/images/inner_screen_bgd-purple.svg'),
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        child: SvgPicture.asset(
                            'assets/images/images_owl/owl_image-1.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 344.0,
              margin: EdgeInsets.only(top: 18.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AppTitle(
                      title: 'Запись',
                      icon: 'assets/icons/title-checklist.svg',
                    ),
                    ButtonWithArrow(
                      title: 'Запись к врачу',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    AppTitle(
                      title: 'Лекарство',
                      icon: 'assets/icons/ico_title-tablet.svg',
                    ),
                    ButtonWithArrow(
                      title: 'Напоминание о приеме ',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    AppTitle(
                      title: 'Общее',
                      icon: 'assets/icons/ico_title-bell.svg',
                    ),
                    MultipleBlock(
                      children: [
                        SwitcherItem(title: 'Общее уведомление',),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFFE4DDEA),
                          ),
                        ),
                        SwitcherItem(title: 'Звук',),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0xFFE4DDEA),
                          ),
                        ),
                        SwitcherItem(title: 'Вибрация',),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
