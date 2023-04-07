import 'package:flutter/material.dart';

class CalendarTime extends StatefulWidget {
  const CalendarTime({Key? key, this.isDisabled = false, required this.time})
      : super(key: key);

  final String time;
  final bool isDisabled;

  @override
  State<CalendarTime> createState() => _CalendarTimeState();
}

class _CalendarTimeState extends State<CalendarTime> {
  bool _isTap = false;
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.isDisabled
          ? (_) => {}
          : (value) => setState(() => _isTap = true),
      onTapCancel:
          widget.isDisabled ? () => {} : () => setState(() => _isTap = false),
      onTapUp: widget.isDisabled
          ? (_) => {}
          : (value) => setState(() => {_isTap = false, _isActive = !_isActive}),
      child: AnimatedContainer(
        width: 100.0,
        height: 43.0,
        margin: EdgeInsets.only(right: 8.0),
        transform: Matrix4.translationValues(0, _isTap ? 4.0 : 0, 0),
        decoration: BoxDecoration(
            border: Border.all(
              color: _isActive ? Color(0xFFFFB103) : Color(0xFFE4DDEA),
              width: 1.0,
            ),
            color: _isActive ? Color(0xFFFFB103) : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: _isActive ? Color(0xFFBB7019) : Color(0xFFE4DDEA),
                offset: Offset(0, _isTap ? 0 : 4.0),
              ),
            ]),
        duration: Duration(milliseconds: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.time,
              style: TextStyle(
                color: _isActive
                    ? Colors.white
                    : widget.isDisabled
                        ? Color(0xFFE4DDEA)
                        : Color(0xFF332A3A),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
