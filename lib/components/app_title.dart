import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({
    super.key,
    required this.title,
    required this.icon,
    this.isButtonMore = false,
  });

  final String title;
  final String icon;
  final bool isButtonMore;

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(widget.icon),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          widget.title,
          style: const TextStyle(color: Color(0xFF332A3A), fontSize: 20.0),
        ),
        const Spacer(),
        widget.isButtonMore
            ? TextButton(
                onPressed: () {
                  print('view more');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                child: const Text(
                  'Больше',
                  style: TextStyle(
                    color: Color(0xFFF19520),
                    fontFamily: 'Rubik_bold',
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
