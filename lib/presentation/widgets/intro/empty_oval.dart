import 'package:flutter/material.dart';

class EmptyOval extends StatelessWidget {
  final Color color;
  final double dotHeight;
  final double dotWidth;

  const EmptyOval(
      {Key? key,
      required this.color,
      required this.dotHeight,
      required this.dotWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(5)),
        child: const SizedBox(
          width: 20,
          height: 10,
        ));
  }
}
