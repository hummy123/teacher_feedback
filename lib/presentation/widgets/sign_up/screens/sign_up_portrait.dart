import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/shared/background_padding.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_email_button.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_google_button.dart';

import '../account_icon.dart';
import '../existing_account_button.dart';
import '../sign_up_instructions.dart';

class SignUpPortrait extends StatelessWidget {
  const SignUpPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundPadding(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AccountIcon(),
          SizedBox(
            height: 10,
          ),
          SignUpInstructions(),
          SizedBox(
            height: 10,
          ),
          SignUpGoogleButton(),
          SizedBox(
            height: 20,
          ),
          SignUpEmailButton(),
          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            height: 1,
          ),
          ExistingAccountButton(),
        ],
      ),
    );
  }
}
