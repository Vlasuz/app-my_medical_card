import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewItem extends StatefulWidget {
  const ReviewItem({
    super.key,
    required this.author,
    required this.mark,
    required this.datePublish,
    required this.text,
  });

  final String author;
  final String mark;
  final String datePublish;
  final String text;

  @override
  State<ReviewItem> createState() => _ReviewItemState();
}

class _ReviewItemState extends State<ReviewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(right: 16.0),
      padding:
          const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0, bottom: 24.0),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE4DDEA)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(color: Color(0xFFE4DDEA), offset: Offset(0, 4.0))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.author,
                style: const TextStyle(
                  color: Color(0xFF332A3A),
                  fontSize: 16.0,
                  fontFamily: 'Rubik_bold',
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/rating-star.svg'),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    widget.mark,
                    style: const TextStyle(
                      color: Color(0xFF332A3A),
                      fontSize: 16.0,
                      fontFamily: 'Rubik_bold',
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            widget.datePublish,
            style: const TextStyle(
                color: Color(0xFF7F599A),
                fontSize: 14.0,
                fontFamily: 'Rubik_medium'),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              color: Color(0xFF332A3A),
              fontSize: 14.0,
              fontFamily: 'Rubik_regular',
            ),
          ),
        ],
      ),
    );
  }
}
