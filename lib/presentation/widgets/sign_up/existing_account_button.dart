import 'package:flutter/material.dart';

class ExistingAccountButton extends StatelessWidget {
  const ExistingAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TextButton(
        onPressed: () {},
        child: const Text('I already have an account'),
      ),
    );
  }
}
