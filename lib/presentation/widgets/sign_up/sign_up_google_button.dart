import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_button.dart';

import 'sign_up_button.dart';

class SignUpGoogleButton extends StatelessWidget {
  const SignUpGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpbutton(
      onPressed: () {},
      image: SvgPicture.asset(
        'assets/images/google_logo.svg',
        fit: BoxFit.contain,
      ),
      buttonText: 'CONTINUE WITH GOOGLE',
    );
  }
}
