import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_medical_card/contsants.dart';
import 'package:my_medical_card/screens/notification/notification_screen.dart';

import '../../components/app_title.dart';
import '../../components/miltiple_block.dart';
import '../../components/navigation_bar.dart';
import '../../components/switcher_item.dart';
import '../../main_scaffold.dart';
import '../doctor/doctor_screen.dart';
import '../notification/components/button_with_arrow.dart';
import 'components/doctor_card.dart';
import 'components/home_screen_head.dart';
import 'components/popular_doctors.dart';
import 'components/select_doctor.dart';
import 'components/select_doctor_item.dart';
import 'components/you_dont_have_plans.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 52.0,
        ),
        HomeScreenHead(),
        SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppTitle(
            title: 'План на сегодня',
            icon: 'assets/icons/calendar-title.svg',
          ),
        ),
        YouDontHavePlans(),
        SizedBox(
          height: 31.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppTitle(
            title: 'Выбрать врача',
            icon: 'assets/icons/tool_box.svg',
            isButtonMore: true,
          ),
        ),
        SelectDoctor(),
        SizedBox(
          height: 51.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppTitle(
            title: 'Популярные врачи',
            icon: 'assets/icons/star-title.svg',
            isButtonMore: true,
          ),
        ),
        PopularDoctors(),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
