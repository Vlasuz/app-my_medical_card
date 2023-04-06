import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SwitcherCustom extends StatefulWidget {
  const SwitcherCustom({Key? key}) : super(key: key);

  @override
  State<SwitcherCustom> createState() => _SwitcherCustomState();
}

class _SwitcherCustomState extends State<SwitcherCustom> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      width: 40.0,
      child: TextButton(
        onPressed: () {
          setState(() {
            _isChecked = !_isChecked;
          });
        },
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Stack(
          children: [
            Positioned(
              left: _isChecked ? 0 : null,
              right: !_isChecked ? 0 : null,
              top: 0,
              bottom: 0,
              child: _isChecked
                  ? SvgPicture.asset('assets/icons/switcher-bgd-active.svg')
                  : SvgPicture.asset('assets/icons/switcher-bgd.svg'),
            ),
            Positioned(
              right: _isChecked ? 0 : null,
              left: !_isChecked ? 0 : null,
              top: 0,
              bottom: 0,
              child: SvgPicture.asset('assets/icons/switcher-thumb.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
