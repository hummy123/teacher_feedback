import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/widgets/shared/background_padding.dart';
import 'package:teacher_feedback/presentation/widgets/sign_up/account_icon.dart';

import '../existing_account_button.dart';
import '../sign_up_email_button.dart';
import '../sign_up_google_button.dart';
import '../sign_up_instructions.dart';

class SignUpLandscape extends StatelessWidget {
  const SignUpLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundPadding(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(500, double.maxFinite)),
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
                height: 10,
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                height: 10,
              ),
              ExistingAccountButton(),
            ],
          ),
        ),
      ),
    );
  }
}
