import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedCardTop extends StatelessWidget {
  const MedCardTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 6.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFD8D1DD)))),
      child: Row(
        children: [
          SizedBox(
            width: 24.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Мед карта',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF281635),
                    fontFamily: 'Rubik_one'),
              ),
            ),
          ),
          SvgPicture.asset('assets/icons/icon-edit.svg')
        ],
      ),
    );
  }
}
