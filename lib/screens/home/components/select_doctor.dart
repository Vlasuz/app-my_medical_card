import 'package:flutter/material.dart';
import 'package:my_medical_card/screens/home/components/select_doctor_item.dart';

class SelectDoctor extends StatelessWidget {
  const SelectDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const <Widget>[
            SelectDoctorItem(
              title: 'Терапевт',
              icon: 'assets/images/select_doctor_icon-1.svg',
              mainColor: Color(0xFFFFB103),
              shadowColor: Color(0xFFBB7019),
            ),
            SelectDoctorItem(
              title: 'Кардиолог',
              icon: 'assets/images/select_doctor_icon-3.svg',
              mainColor: Color(0xFFCD81FF),
              shadowColor: Color(0xFF9268CD),
            ),
            SelectDoctorItem(
              title: 'Дантист',
              icon: 'assets/images/select_doctor_icon-2.svg',
              mainColor: Color(0xFFDA3767),
              shadowColor: Color(0xFFC72D5D),
            ),
            SelectDoctorItem(
              title: 'Проктолог',
              icon: 'assets/images/select_doctor_icon-4.svg',
              mainColor: Color(0xFF77C900),
              shadowColor: Color(0xFF5AA601),
            ),
            SelectDoctorItem(
              title: 'Проктолог',
              icon: 'assets/images/select_doctor_icon-4.svg',
              mainColor: Color(0xFF77C900),
              shadowColor: Color(0xFF5AA601),
            ),
          ],
        ),
      ),
    );
  }
}
