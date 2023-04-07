import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleReviews extends StatelessWidget {
  const TitleReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/ico_title-message.svg'),
        const SizedBox(
          width: 8.0,
        ),
        const Text(
          'Отзывы',
          style:
          TextStyle(color: Color(0xFF332A3A), fontSize: 20.0),
        ),
        const SizedBox(
          width: 10.0,
        ),
        SvgPicture.asset('assets/icons/rating-star.svg'),
        const SizedBox(
          width: 4.0,
        ),
        const Text(
          '4.8',
          style: TextStyle(
              color: Color(0xFF332A3A),
              fontSize: 16.0,
              fontFamily: 'Rubik_bold'),
        ),
        const SizedBox(
          width: 4.0,
        ),
        const Text(
          '(126)',
          style: TextStyle(
              color: Color(0xFF7F599A),
              fontSize: 16.0,
              fontFamily: 'Rubik_regular'),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            print('view all');
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            'Посмотреть все',
            style: TextStyle(
              color: Color(0xFFF19520),
              fontFamily: 'Rubik_bold',
            ),
          ),
        ),
      ],
    );
  }
}
