import 'package:flutter/material.dart';
import 'package:my_medical_card/screens/doctor/doctor_screen.dart';
import 'package:my_medical_card/screens/home/home_screen.dart';
import 'package:my_medical_card/screens/notification/notification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rubik_one'),
      routes: {
        '/': (context) => HomeScreen(),
        '/notification': (context) => NotificationScreen(),
        '/doctor': (context) => DoctorScreen(),
      },
      initialRoute: '/',
    );
  }
}
