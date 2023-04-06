import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 270.0,
        color: Color(0xFF1EAFF9),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset('assets/images/doctor_icon_big-1.svg'),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 200.0,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12.0,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Алена Кобылинская'),
                            Text('Кардиолог')
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('1'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('2'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
