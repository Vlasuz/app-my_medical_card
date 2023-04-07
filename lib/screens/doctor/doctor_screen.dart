import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/app_title.dart';
import 'components/calendar_day.dart';
import 'components/calendar_days.dart';
import 'components/calendar_times.dart';
import 'components/doctor_top.dart';
import 'components/make_appointment.dart';
import 'components/review_item.dart';
import 'components/reviews_block.dart';
import 'components/title_reviews.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorTop(
              name: arguments['name'],
              position: arguments['position'],
              phone: arguments['phone'],
              image: arguments['image'],
              color: arguments['color'],
            ),
            Container(
              transform: Matrix4.translationValues(0, -12.0, 0),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AppTitle(
                    title: 'О докторе',
                    icon: 'assets/icons/ico_title-plus.svg',
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Кардиологи — это медицинские работники, которые исследуют и лечат заболевания, связанные с сердечно-сосудистой системой, включая сердце и кровеносные сосуды. Они также помогают своим пациентам узнать о факторах риска сердечных заболеваний и определить, какое лечение или процедуру им следует пройти.',
                    style: TextStyle(
                        color: Color(0xFF332A3A),
                        fontFamily: 'Rubik_regular',
                        fontSize: 14.0),
                  ),
                  Text(''),
                  Text(
                    'Детский кардиолог — это врач-специалист в области кардиологии, который занимается лечением и диагностикой сердечных осложнений у детей.',
                    style: TextStyle(
                        color: Color(0xFF332A3A),
                        fontFamily: 'Rubik_regular',
                        fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  TitleReviews(),
                  ReviewsBlock(),
                  SizedBox(
                    height: 32.0,
                  ),
                  AppTitle(
                      title: 'Расписания',
                      icon: 'assets/icons/ico_title-empty_calendar.svg'),
                  SizedBox(
                    height: 16.0,
                  ),
                  CalendarDays(),
                  SizedBox(
                    height: 32.0,
                  ),
                  AppTitle(
                    title: 'Выберите время',
                    icon: 'assets/icons/ico_title-clock.svg',
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  CalendarTimes(),
                  MakeAppointment(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
