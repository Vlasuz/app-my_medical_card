import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarCustomItem extends StatefulWidget {
  const BottomNavigationBarCustomItem(
      {Key? key,
      required this.title,
      required this.unSelectIcon,
      required this.selectIcon,
      this.isSelected = false,
      required this.onPressed})
      : super(key: key);

  final String title;
  final String unSelectIcon;
  final String selectIcon;
  final bool isSelected;
  final Function() onPressed;

  @override
  State<BottomNavigationBarCustomItem> createState() =>
      _BottomNavigationBarCustomItemState();
}

class _BottomNavigationBarCustomItemState
    extends State<BottomNavigationBarCustomItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: Colors.white, padding: EdgeInsets.zero),
      onPressed: widget.onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            widget.isSelected ? widget.selectIcon : widget.unSelectIcon,
            width: 32.0,
            height: 32.0,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            widget.title,
            style: TextStyle(
                color: Color(widget.isSelected ? 0xFF332A3A : 0xFFAB9DD1),
                fontSize: 10.0,
                fontFamily: 'Rubik_medium'),
          ),
        ],
      ),
    );
  }
}
