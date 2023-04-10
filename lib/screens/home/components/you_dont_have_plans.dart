import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contsants.dart';

class YouDontHavePlans extends StatefulWidget {
  const YouDontHavePlans({
    super.key,
  });

  @override
  State<YouDontHavePlans> createState() => _YouDontHavePlansState();
}

class _YouDontHavePlansState extends State<YouDontHavePlans> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kBlueColor,
          boxShadow: const [
            BoxShadow(color: Color(0xFF199CE9), offset: Offset(0.0, 4.0))
          ]),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0, right: 5.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'У вас нету планов',
                  style: TextStyle(color: Color(0xFF103D52), fontSize: 22.0),
                ),
                const SizedBox(
                  width: 200.0,
                  child: Text(
                    'Чтобы были планы, Вам нужно пройтись по врачам и сдать анализы.',
                    style: TextStyle(
                        color: Color(0xFF103D52),
                        fontSize: 14.0,
                        fontFamily: "Rubik_medium"),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                GestureDetector(
                  onTapDown: (value) => setState(() => _isTap = true),
                  onTapCancel: () => setState(() => _isTap = false),
                  onTapUp: (value) => {
                    print('see more'),
                    setState(() => _isTap = false)
                  },
                  child: AnimatedContainer(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    transform: Matrix4.translationValues(0, _isTap ? 3.0 : 0 , 0),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF6FBFE),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFFD4DADE), offset: Offset(0.0, _isTap ? 0 : 3.0)),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    duration: const Duration(milliseconds: 50),
                    child: Text(
                      'Посмотреть'.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xFF2E96C8),
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: SvgPicture.asset(
                'assets/images/kit_of_medical.svg',
                width: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
