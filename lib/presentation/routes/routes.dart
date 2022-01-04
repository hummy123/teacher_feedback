import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/routes/intro_one.dart';
import 'package:teacher_feedback/presentation/routes/intro_two.dart';
import 'package:teacher_feedback/presentation/routes/sign_up.dart';
import 'package:teacher_feedback/presentation/routes/splash_screen.dart';

// this file contains the route object used in app.art

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
  '/intro-one': (context) => const IntroOne(),
  '/intro-two': (context) => const IntroTwo(),
  '/sign-up': (contet) => const SignUp(),
};
