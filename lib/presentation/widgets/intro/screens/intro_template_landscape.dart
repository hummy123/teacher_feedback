import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/shared/background_padding.dart';

import '../intro_button.dart';
import '../intro_image.dart';
import '../page_indicator.dart';

class IntroTemplateLandscape extends StatelessWidget {
  //variables controlling template
  final Color colour;
  final Color buttonTextColour;
  final VoidCallback onButtonPress;
  final String buttonText;
  final String imagePath;
  final String headingText;
  final String bodyText;
  final int pageNum;

  const IntroTemplateLandscape(
      {Key? key,
      required this.colour,
      required this.buttonTextColour,
      required this.onButtonPress,
      required this.buttonText,
      required this.imagePath,
      required this.headingText,
      required this.bodyText,
      required this.pageNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundPadding(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntroImage(imagePath: imagePath),
          const SizedBox(height: 10),
          Text(
            headingText,
            textAlign: TextAlign.center,
            softWrap: true,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 5),
          Text(
            bodyText,
            softWrap: true,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 10),
          PageIndicator(
            color: colour,
            currentPage: pageNum,
            dotHeight: 10,
            dotWidth: 20,
            numPages: 2,
          ),
          const SizedBox(height: 20),
          IntroButton(
              onButtonPress: onButtonPress,
              colour: colour,
              buttonText: buttonText,
              buttonTextColour: buttonTextColour),
        ],
      ),
    );
  }
}
