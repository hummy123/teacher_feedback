import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:teacher_feedback/presentation/app_theme/app_theme.dart';
import 'package:teacher_feedback/presentation/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/intro-one',
      routes: routes,
      // This builder adds responsive functionality
      // according to listed breakpoints.
      builder: (context, widget) =>
          ResponsiveWrapper.builder(widget!, defaultScale: false, breakpoints: [
        const ResponsiveBreakpoint.autoScaleDown(360, name: 'ExtraSmall'),
        const ResponsiveBreakpoint.autoScale(640, name: MOBILE),
      ], breakpointsLandscape: [
        const ResponsiveBreakpoint.resize(600, name: 'ExtraSmall'),
        const ResponsiveBreakpoint.resize(1000, name: MOBILE),
      ]),
    );
  }
}
