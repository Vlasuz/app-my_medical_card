import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorTop extends StatefulWidget {
  const DoctorTop({
    super.key,
    required this.name,
    required this.position,
    this.phone = '',
    required this.color,
    required this.image,
  });

  final String name;
  final String position;
  final String phone;
  final Color color;
  final String image;

  @override
  State<DoctorTop> createState() => _DoctorTopState();
}

class _DoctorTopState extends State<DoctorTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307.0,
      color: widget.color,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -30.0,
            child: SvgPicture.asset(
              widget.image,
              width: 250.0,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 146.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: const Alignment(1, 0.8),
                  colors: <Color>[
                    widget.color.withOpacity(0),
                    widget.color.withOpacity(0.2),
                    widget.color.withOpacity(0.4),
                    widget.color.withOpacity(0.6),
                    widget.color.withOpacity(0.8),
                    widget.color.withOpacity(1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 27.0,
            left: 0,
            right: 0,
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 12.0,
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200.0,
                            child: Text(
                              widget.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontFamily: 'Rubik_bold',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            widget.position,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: 'Rubik_medium'),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: widget.phone.isNotEmpty
                                ? TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () {
                                      print('Phone');
                                    },
                                    child: Container(
                                      width: 50.0,
                                      height: 47.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF6FBFE),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color(0xFFD4DADE),
                                              offset: Offset(0, 3.0)),
                                        ],
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/icons/green_phone.svg'),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                          Container(
                            width: 50.0,
                            height: 50.0,
                            margin: const EdgeInsets.only(left: 8.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () {
                                print('Chat');
                              },
                              child: Container(
                                width: 50.0,
                                height: 47.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6FBFE),
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xFFD4DADE),
                                        offset: Offset(0, 3.0)),
                                  ],
                                ),
                                child: Center(
                                  child:
                                      SvgPicture.asset('assets/icons/chat.svg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
