import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/shared/orientation_switcher.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/screens/sign_up_landscape.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/screens/sign_up_portrait.dart';

/* This screen is shown on route '/sign-up'. */

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OrientationSwitcher(
        portrait: SignUpPortrait(), landscape: SignUpLandscape());
  }
}
