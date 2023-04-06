import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contsants.dart';

class YouDontHavePlans extends StatelessWidget {
  const YouDontHavePlans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kBlueColor,
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF199CE9),
                offset: Offset(0.0, 4.0)
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0, right: 5.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('У вас нету планов', style: TextStyle(color: Color(0xFF103D52), fontSize: 22.0),),
                SizedBox(
                  width: 200.0,
                  child: Text(
                    'Чтобы были планы, Вам нужно пройтись по врачам и сдать анализы.',
                    style: TextStyle(color: Color(0xFF103D52), fontSize: 14.0, fontFamily: "Rubik_medium"),),
                ),
                SizedBox(height: 24.0,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF6FBFE),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFD4DADE),
                            offset: Offset(0.0, 3.0)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        foregroundColor: Color(0xFFF6FBFE)
                    ),
                    child: Text('Посмотреть'.toUpperCase(), style: TextStyle(color: Color(0xFF2E96C8), fontSize: 16.0),),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: SvgPicture.asset('assets/images/kit_of_medical.svg', width: 100.0,),
            ),
          ],
        ),
      ),
    );
  }
}
