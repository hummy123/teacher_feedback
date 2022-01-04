import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final VoidCallback onButtonPress;
  final String buttonText;
  final Color colour;
  final Color buttonTextColour;

  const IntroButton({
    Key? key,
    required this.onButtonPress,
    required this.colour,
    required this.buttonText,
    required this.buttonTextColour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlinedButton(
          onPressed: onButtonPress,
          style: OutlinedButton.styleFrom(
              backgroundColor: colour, primary: buttonTextColour),
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: buttonTextColour,
                ),
          )),
    );
  }
}
