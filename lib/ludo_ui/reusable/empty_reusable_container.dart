import 'package:flutter/material.dart';

import 'colors_utils.dart';

class ReusableEmptyContainer extends StatelessWidget {
  final double? height;
  final double width;
  final Widget? widget;

  const ReusableEmptyContainer

  ({super.key,
   this.height,
  required this.width,
  this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow, width: 2),
        gradient: const RadialGradient(
          colors: [
            Color(0xFF4285F4),
            Color(0xFF173375),
            Color(0xFF173375),
            Color(0xFF001665),
          ],
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child
      :widget,
    );
  }
}