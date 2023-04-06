import 'package:flutter/material.dart';

class MultipleBlock extends StatelessWidget {
  const MultipleBlock({
    super.key,
    this.children,
  });
  final children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE4DDEA),
            offset: Offset(0, 2.0),
          ),
        ],
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFE4DDEA),
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
