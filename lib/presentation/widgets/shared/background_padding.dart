import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/app_theme/app_theme.dart';

// simple widget for the scaffold > safe area > padding
// root tree used in multiple screens

class BackgroundPadding extends StatelessWidget {
  final Widget child;
  const BackgroundPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        )));
  }
}
