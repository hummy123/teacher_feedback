import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:teacher_feedback/presentation/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) =>
          ResponsiveWrapper.builder(widget!, defaultScale: false, breakpoints: [
        const ResponsiveBreakpoint.autoScaleDown(360, name: 'ExtraSmall'),
        const ResponsiveBreakpoint.autoScale(640, name: MOBILE),
      ], breakpointsLandscape: [
        const ResponsiveBreakpoint.autoScaleDown(600, name: 'ExtraSmall'),
        const ResponsiveBreakpoint.autoScale(1000, name: MOBILE),
      ]),
      routes: routes,
    );
  }
}
