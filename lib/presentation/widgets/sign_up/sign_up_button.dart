import 'package:flutter/material.dart';

// Abstraction of sign-up button in case more options wanted.

class SignUpbutton extends StatelessWidget {
  final Widget image;
  final String buttonText;
  final VoidCallback onPressed;

  const SignUpbutton(
      {Key? key,
      required this.buttonText,
      required this.image,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white, elevation: 1),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20.0,
            ),
            image,
            const SizedBox(
              width: 20.0,
            ),
            FittedBox(
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
        ),
      ),
    );
  }
}
