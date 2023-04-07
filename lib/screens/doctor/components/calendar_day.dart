import 'package:flutter/material.dart';

class CalendarDay extends StatefulWidget {
  const CalendarDay({
    super.key,
    required this.dayNum,
    required this.day,
    this.isDisabled = false,
  });

  final String dayNum;
  final String day;
  final bool isDisabled;

  @override
  State<CalendarDay> createState() => _CalendarDayState();
}

class _CalendarDayState extends State<CalendarDay> {
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
        width: 57.0,
        height: 72.0,
        margin: const EdgeInsets.only(right: 8.0),
        transform: Matrix4.translationValues(0, _isTap ? 4.0 : 0, 0),
        decoration: BoxDecoration(
            border: Border.all(
              color: _isActive ? const Color(0xFFFFB103) : const Color(0xFFE4DDEA),
              width: 1.0,
            ),
            color: _isActive ? const Color(0xFFFFB103) : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: _isActive ? const Color(0xFFBB7019) : const Color(0xFFE4DDEA),
                offset: Offset(0, _isTap ? 0 : 4.0),
              ),
            ]),
        duration: const Duration(milliseconds: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.day,
              style: TextStyle(
                  fontFamily: "Rubik_medium",
                  color: _isActive
                      ? Colors.white.withOpacity(0.6)
                      : widget.isDisabled
                          ? const Color(0xFFE4DDEA)
                          : const Color(0xFF7F599A),
                  fontSize: 14.0),
            ),
            Text(
              widget.dayNum,
              style: TextStyle(
                color: _isActive
                    ? Colors.white
                    : widget.isDisabled
                        ? const Color(0xFFE4DDEA)
                        : const Color(0xFF332A3A),
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
