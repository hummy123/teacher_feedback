import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/app_theme/app_theme.dart';

class AccountIcon extends StatelessWidget {
  const AccountIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 70,
        child: Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              child: Icon(
                Icons.account_circle,
                color: backgroundColour,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
