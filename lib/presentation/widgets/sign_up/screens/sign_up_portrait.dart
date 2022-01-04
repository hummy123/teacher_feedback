import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/shared/background_padding.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_email_button.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/sign_up_google_button.dart';

import '../existing_account_button.dart';

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
          /*SignUpInstructions(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),*/
          SizedBox(
            height: 20,
          ),
          SignUpGoogleButton(),
          SizedBox(
            height: 20,
          ),
          SignUpEmailButton(),
          Divider(
            indent: 10,
            endIndent: 10,
            height: 30,
          ),
          ExistingAccountButton(),
        ],
      ),
    );
  }
}
