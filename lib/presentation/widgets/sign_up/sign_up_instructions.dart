import 'package:flutter/material.dart';

class SignUpInstructions extends StatelessWidget {
  const SignUpInstructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Create an account',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            'Sign up and select your institution',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
