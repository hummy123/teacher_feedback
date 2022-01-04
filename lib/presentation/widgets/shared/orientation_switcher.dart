import 'package:flutter/material.dart';

/* simple helper widget that checks orientation from context
 * and returns correct portrait/landscape.
 * Abstracted to increase code reuse.
 */

class OrientationSwitcher extends StatelessWidget {
  /* widgets (screens) to switch between depending
   * on orientation. */
  final Widget portrait;
  final Widget landscape;

  const OrientationSwitcher(
      {Key? key, required this.portrait, required this.landscape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get orientation
    Orientation orientation = MediaQuery.of(context).orientation;

    // return different template based on orientation
    return orientation == Orientation.portrait ? portrait : landscape;
  }
}
