import 'package:flutter/material.dart';
import 'package:my_medical_card/components/switcher_custom.dart';

class SwitcherItem extends StatefulWidget {
  const SwitcherItem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SwitcherItem> createState() => _SwitcherItemState();
}

class _SwitcherItemState extends State<SwitcherItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 16.0, left: 16.0, right: 8.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFF332A3A),
              fontSize: 18.0,
              fontFamily: 'Rubik_bold',
            ),
          ),
          SwitcherCustom(),
        ],
      ),
    );
  }
}
