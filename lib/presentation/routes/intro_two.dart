import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/intro/screens/intro_template_landscape.dart';
import 'package:teacher_feedback/presentation/widgets/intro/screens/intro_template_portrait.dart';
import 'package:teacher_feedback/presentation/widgets/shared/orientation_switcher.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

  //values for usage in intro templates
  final Color colour = const Color(0xFF3e8ef1);
  final String buttonText = "LET'S START";
  final Color buttonTextColour = Colors.white;
  final String imagePath = 'assets/images/university-svgrepo-com.svg';
  final String headingText = 'Select your institution and start learning';
  final String bodyText =
      'We will put you into contact with your teachers, who you can message and submit assignments to.';
  final int pageNum = 2;

  @override
  Widget build(BuildContext context) {
    //see intro_one.dart for an explanation of what's happening here
    void onButtonPress() {
      Navigator.pushNamedAndRemoveUntil(context, '/sign-up', (route) => false);
    }

    return OrientationSwitcher(
      portrait: IntroTemplatePortrait(
          colour: colour,
          buttonTextColour: buttonTextColour,
          onButtonPress: onButtonPress,
          buttonText: buttonText,
          imagePath: imagePath,
          headingText: headingText,
          bodyText: bodyText,
          pageNum: pageNum),
      landscape: IntroTemplateLandscape(
          colour: colour,
          buttonTextColour: buttonTextColour,
          onButtonPress: onButtonPress,
          buttonText: buttonText,
          imagePath: imagePath,
          headingText: headingText,
          bodyText: bodyText,
          pageNum: pageNum),
    );
  }
}
