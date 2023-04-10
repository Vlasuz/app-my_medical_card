import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedCardInfoWidget extends StatelessWidget {
  const MedCardInfoWidget({
    super.key, required this.value, required this.type, required this.icon,
  });

  final String value;
  final String type;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 102.0,
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE4DDEA), width: 1.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1.0),
                  icon
                ],
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xFF281635),
                fontFamily: 'Rubik_bold',
              ),
            ),
            Text(
              type,
              style: TextStyle(
                color: Color(0xFF7F599A),
                fontSize: 12.0,
                fontFamily: 'Rubik_medium',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
