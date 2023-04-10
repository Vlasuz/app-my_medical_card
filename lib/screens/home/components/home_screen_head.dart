import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenHead extends StatelessWidget {
  const HomeScreenHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Stack(
            children: [
              SvgPicture.asset('assets/icons/head_for_name_letter.svg'),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset('assets/icons/crown-coin.svg'),
              ),
              const Positioned.fill(
                child: Center(
                  child: Text(
                    'A',
                    style: TextStyle(
                      fontFamily: 'SF_Pro_Rounded_black',
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Alexey',
                style: TextStyle(
                    color: Color(0xFF281635),
                    fontSize: 16.0),
              ),
              Text(
                '29 лет',
                style: TextStyle(
                    color: Color(0xFFAE7ED1),
                    fontSize: 12.0),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 40.0,
            height: 40.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/notification');
              },
              child: SvgPicture.asset('assets/icons/alarm_notices.svg'),
            ),
          ),
        ],
      ),
    );
  }
}