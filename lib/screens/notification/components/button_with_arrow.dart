import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWithArrow extends StatefulWidget {
  const ButtonWithArrow({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function() onPressed;

  @override
  State<ButtonWithArrow> createState() => _ButtonWithArrowState();
}

class _ButtonWithArrowState extends State<ButtonWithArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE4DDEA),
            offset: Offset(0, 2.0),
          ),
        ],
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFE4DDEA),
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, right: 8.0, bottom: 16.0),
          foregroundColor: Colors.white,
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Color(0xFF332A3A),
                fontSize: 18.0,
                fontFamily: 'Rubik_bold',
              ),
            ),
            SvgPicture.asset('assets/icons/arrow-rht.svg')
          ],
        ),
      ),
    );
  }
}
