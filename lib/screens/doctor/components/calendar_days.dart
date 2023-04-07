import 'package:flutter/material.dart';

import 'calendar_day.dart';

class CalendarDays extends StatefulWidget {
  const CalendarDays({
    super.key,
  });

  @override
  State<CalendarDays> createState() => _CalendarDaysState();
}

class _CalendarDaysState extends State<CalendarDays> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(bottom: 4.0),
        child: Row(
          children: const [
            CalendarDay(
              dayNum: '10',
              day: 'Пн',
            ),
            CalendarDay(
              dayNum: '11',
              day: 'Вт',
            ),
            CalendarDay(
              dayNum: '12',
              day: 'Ср',
              isDisabled: true,
            ),
            CalendarDay(
              dayNum: '13',
              day: 'Чт',
              isDisabled: true,
            ),
            CalendarDay(
              dayNum: '14',
              day: 'Пт',
            ),
            CalendarDay(
              dayNum: '15',
              day: 'Сб',
            ),
            CalendarDay(
              dayNum: '16',
              day: 'Вс',
              isDisabled: true,
            ),
            CalendarDay(
              dayNum: '17',
              day: 'Пн',
            ),
            CalendarDay(
              dayNum: '18',
              day: 'Вт',
              isDisabled: true,
            ),
            CalendarDay(
              dayNum: '19',
              day: 'Ср',
            ),
            CalendarDay(
              dayNum: '20',
              day: 'Чт',
            ),
            CalendarDay(
              dayNum: '21',
              day: 'Пт',
              isDisabled: true,
            ),
            CalendarDay(
              dayNum: '22',
              day: 'Сб',
            ),
            CalendarDay(
              dayNum: '23',
              day: 'Вс',
              isDisabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
