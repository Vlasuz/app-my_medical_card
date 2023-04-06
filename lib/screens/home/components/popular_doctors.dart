import 'package:flutter/material.dart';

import 'doctor_card.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          DoctorCard(
            doctorName: 'Анастасия \nКазакова',
            doctorPosition: 'Психиатр',
            doctorImage: 'assets/images/doctor_icon-1.svg',
            isQualify: true,
            isAdult: true,
            isChild: true,
            reviews: '10',
            experience: '7',
            doctorColor: Color(0xFF1EAFF9),
          ),
          DoctorCard(
            doctorName: 'Анастасия \nКазакова',
            doctorPosition: 'Психиатр',
            doctorImage: 'assets/images/doctor_icon-2.svg',
            doctorColor: Color(0xFF1EA669),
          ),
        ],
      ),
    );
  }
}
