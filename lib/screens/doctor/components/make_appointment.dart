import 'package:flutter/material.dart';

class MakeAppointment extends StatefulWidget {
  const MakeAppointment({Key? key}) : super(key: key);

  @override
  State<MakeAppointment> createState() => _MakeAppointmentState();
}

class _MakeAppointmentState extends State<MakeAppointment> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (value) => setState(() => _isTap = true),
      onTapCancel: () => setState(() => _isTap = false),
      onTapUp: (value) => setState(() => _isTap = false),
      child: AnimatedContainer(
        margin: const EdgeInsets.only(top: 24.0),
        height: 49.0,
        transform: Matrix4.translationValues(0, _isTap ? 3.0 : 0, 0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xFFCD81FF),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(color: const Color(0xFF8A4CB2), offset: Offset(0, _isTap ? 0 : 3.0))
            ]),
        duration: const Duration(milliseconds: 100),
        child: Center(
          child: Text(
            'Записаться на прием'.toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 16.0, fontFamily: 'Rubik_one'),
          ),
        ),
      ),
    );
  }
}
