import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SvgPicture.asset('assets/images/Icons8_flat_calendar.svg',
              fit: BoxFit.contain)),
    );
  }
}
