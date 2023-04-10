import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.doctorPosition,
    required this.doctorImage,
    this.isQualify = false,
    this.experience = '0',
    this.reviews = '0',
    this.isAdult = false,
    this.isChild = false,
    required this.doctorColor,
    this.doctorPhone = '',
  });

  final String doctorName;
  final String doctorPosition;
  final String doctorImage;
  final Color doctorColor;
  final String doctorPhone;
  final bool isQualify;
  final String experience;
  final String reviews;
  final bool isAdult;
  final bool isChild;

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (value) => setState(() => _isPressed = true),
      onTapCancel: () => setState(() => _isPressed = false),
      onTapUp: (value) {
        setState(() => _isPressed = false);
        Navigator.pushNamed(context, '/doctor', arguments: {
          'name': widget.doctorName,
          'position': widget.doctorPosition,
          'phone': widget.doctorPhone,
          'color': widget.doctorColor,
          'image': widget.doctorImage
        });
      },
      child: AnimatedContainer(
        width: 320.0,
        margin: const EdgeInsets.only(bottom: 4.0, left: 16.0),
        transform: Matrix4.translationValues(0, _isPressed ? 4.0 : 0, 0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFDBDBDB),
              offset: _isPressed ? Offset(0, 0.0) : Offset(0, 4.0),
            ),
          ],
          border: Border.all(color: const Color(0xFFE4DDEA), width: 1.0),
        ),
        duration: Duration(milliseconds: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                      color: widget.doctorColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: SvgPicture.asset(widget.doctorImage),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.doctorName,
                      style: const TextStyle(
                          color: Color(0xFF332A3A),
                          fontSize: 18.0,
                          fontFamily: "Rubik_one"),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      widget.doctorPosition,
                      style: const TextStyle(
                          color: Color(0xFF7F599A),
                          fontFamily: "Rubik_medium",
                          fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    widget.isQualify
                        ? const Text(
                            'Квалифицированный врач',
                            style: TextStyle(
                                color: Color(0xFF332A3A),
                                fontFamily: "Rubik_medium",
                                fontSize: 14.0),
                          )
                        : const SizedBox(
                            height: 10.0,
                          ),
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              color: const Color(0xFFD8D1DD),
              child: const SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFF77C900),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Text(
                            widget.experience,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'SF_Pro_Rounded_black'),
                          ),
                        ),
                      ),
                      const Text(
                        'Опыт',
                        style: TextStyle(
                            color: Color(0xFF332A3A),
                            fontFamily: 'Rubik_medium',
                            fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFB103),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Text(
                            widget.reviews,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'SF_Pro_Rounded_black'),
                          ),
                        ),
                      ),
                      const Text(
                        'Отзывы',
                        style: TextStyle(
                            color: Color(0xFF332A3A),
                            fontFamily: 'Rubik_medium',
                            fontSize: 12.0),
                      )
                    ],
                  ),
                  if (widget.isAdult)
                    Column(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFCD81FF),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child:
                                SvgPicture.asset('assets/images/isAdult.svg'),
                          ),
                        ),
                        const Text(
                          'Взрослые',
                          style: TextStyle(
                              color: Color(0xFF332A3A),
                              fontFamily: 'Rubik_medium',
                              fontSize: 12.0),
                        )
                      ],
                    ),
                  if (widget.isChild)
                    Column(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDA3767),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child:
                                SvgPicture.asset('assets/images/isChild.svg'),
                          ),
                        ),
                        const Text(
                          'Дети',
                          style: TextStyle(
                              color: Color(0xFF332A3A),
                              fontFamily: 'Rubik_medium',
                              fontSize: 12.0),
                        )
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
