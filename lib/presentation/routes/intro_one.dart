import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/intro/screens/intro_template_landscape.dart';
import 'package:teacher_feedback/presentation/widgets/intro/screens/intro_template_portrait.dart';
import 'package:teacher_feedback/presentation/widgets/shared/orientation_switcher.dart';

// This screen is shown on route '/intro-one'

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

  //values for usage in intro templates
  final Color colour = const Color(0xFFFFBC4B);
  final String buttonText = 'NEXT';
  final Color buttonTextColour = Colors.black;
  final String imagePath = 'assets/images/signing-pencil-svgrepo-com.svg';
  final String headingText =
      'Tired of handing paper assignments,\nto your teachers?';
  final String bodyText =
      'Then say hello to Teacher Feedback. Submit your work online and we\'ll notify you of any feedback.';
  final int pageNum = 1;

  @override
  Widget build(BuildContext context) {
    //store function inside build function as it needs context
    void onButtonPress() {
      Navigator.pushNamed(context, '/intro-two');
    }

    // return different template based on orientation
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
