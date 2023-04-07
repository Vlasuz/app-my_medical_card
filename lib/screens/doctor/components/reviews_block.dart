import 'package:flutter/material.dart';
import 'package:my_medical_card/screens/doctor/components/review_item.dart';

class ReviewsBlock extends StatelessWidget {
  const ReviewsBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Row(
          children: const [
            ReviewItem(
              author: 'Андрей Копаница',
              mark: '5,0',
              datePublish: '1 день назад',
              text:
              'Очень высокой квалификации, очень тактичный, внимательный, произвел очень хорошее впечатление как специалист. Мой сын и я ставим ему самые высокие баллы.',
            ),
            ReviewItem(
              author: 'Андрей Копаница',
              mark: '5,0',
              datePublish: '1 день назад',
              text:
              'Очень высокой квалификации, очень тактичный, внимательный, произвел очень хорошее впечатление как специалист. Мой сын и я ставим ему самые высокие баллы.',
            ),
          ],
        ),
      ),
    );
  }
}
