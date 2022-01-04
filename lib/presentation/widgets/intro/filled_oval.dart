import 'package:flutter/material.dart';

class FilledOval extends StatelessWidget {
  final Color color;
  final double dotWidth;
  final double dotHeight;

  const FilledOval(
      {Key? key,
      required this.color,
      required this.dotHeight,
      required this.dotWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: const SizedBox(
          width: 20,
          height: 10,
        ));
  }
}
