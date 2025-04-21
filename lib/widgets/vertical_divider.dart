import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Image.asset(
        'assets/images/line 2xhdpi.png',
        height: 650,
        width: 80,
      ),
    );
  }
}
