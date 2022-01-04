import 'package:flutter/material.dart';
import 'package:teacher_feedback/presentation/routes/splash_screen.dart';

// this file contains the route object used in app.art

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => const SplashScreen(),
};
