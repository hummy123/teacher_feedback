import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_button.dart';

import 'sign_up_button.dart';

class SignUpEmailButton extends StatelessWidget {
  const SignUpEmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpbutton(
      onPressed: () {},
      image: const FittedBox(
        child: Icon(
          Icons.email,
          color: Colors.green,
        ),
      ),
      buttonText: 'CONTINUE WITH EMAIL',
    );
  }
}
