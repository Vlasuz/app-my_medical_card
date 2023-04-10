import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedCardButtonWidget extends StatefulWidget {
  const MedCardButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.colorShadow,
  });

  final SvgPicture icon;
  final String title;
  final Color color;
  final Color colorShadow;

  @override
  State<MedCardButtonWidget> createState() => _MedCardButtonWidgetState();
}

class _MedCardButtonWidgetState extends State<MedCardButtonWidget> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (value) => setState(() => _isTap = true),
      onTapCancel: () => setState(() => _isTap = false),
      onTapUp: (value) => {setState(() => _isTap = false)},
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width / 2 - 23.0,
        transform: Matrix4.translationValues(0, _isTap ? 4.0 : 0, 0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: widget.color,
            boxShadow: [
              BoxShadow(
                color: widget.colorShadow,
                offset: Offset(0, _isTap ? 0 : 4.0),
              ),
            ],
            borderRadius: BorderRadius.circular(10.0)),
        duration: const Duration(milliseconds: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 1.0,
                ),
                widget.icon
              ],
            ),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16.0,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
