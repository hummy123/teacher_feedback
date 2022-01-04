import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroImage extends StatelessWidget {
  final String imagePath;
  const IntroImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ));
  }
}
