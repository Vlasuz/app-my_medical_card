import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectDoctorItem extends StatefulWidget {
  const SelectDoctorItem({
    super.key,
    required this.title,
    required this.icon,
    required this.mainColor,
    required this.shadowColor,
  });

  final String title;
  final String icon;
  final Color mainColor;
  final Color shadowColor;

  @override
  State<SelectDoctorItem> createState() => _SelectDoctorItemState();
}

class _SelectDoctorItemState extends State<SelectDoctorItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: Colors.white,
      ),
      child: GestureDetector(
        onTapDown: (value) => setState(() => _isPressed = true),
        onTapCancel: () => setState(() => _isPressed = false),
        onTapUp: (value) => setState(() => _isPressed = false),
        child: AnimatedContainer(
          width: 90.0,
          transform: Matrix4.translationValues(0, _isPressed ? 4.0 : 0, 0),
          margin: EdgeInsets.only(left: 16.0, bottom: 4.0),
          padding: EdgeInsets.only(top: 16.0, left: 1.0, right: 1.0, bottom: 6.0),
          decoration: BoxDecoration(
            color: widget.mainColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: _isPressed ? [] : [
              BoxShadow(color: widget.shadowColor, offset: Offset(0.0, 4.0))
            ],
          ),
          duration: Duration(milliseconds: 50),
          child: Column(
            children: [
              SizedBox(
                width: 70.0,
                child: SvgPicture.asset(
                  widget.icon,
                  width: 70.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
