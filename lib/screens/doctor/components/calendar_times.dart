import 'package:flutter/material.dart';

import 'calendar_time.dart';

class CalendarTimes extends StatelessWidget {
  const CalendarTimes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(bottom: 4.0),
        child: Row(
          children: const [
            CalendarTime(
              time: '09:00',
            ),
            CalendarTime(
              time: '10:00',
            ),
            CalendarTime(
              time: '11:00',
              isDisabled: true,
            ),
            CalendarTime(
              time: '12:00',
              isDisabled: true,
            ),
            CalendarTime(
              time: '13:00',
            ),
            CalendarTime(
              time: '14:00',
            ),
            CalendarTime(
              time: '15:00',
            ),
            CalendarTime(
              time: '16:00',
            ),
            CalendarTime(
              time: '17:00',
              isDisabled: true,
            ),
            CalendarTime(
              time: '18:00',
            ),
          ],
        ),
      ),
    );
  }
}
