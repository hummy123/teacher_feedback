import 'package:flutter/material.dart';

import 'empty_oval.dart';
import 'filled_oval.dart';

/* Widget to build list of dots indicating which page is selected.
 * After developing it, I found Flutter has a similar widget built-in,
 * which is named TabPageIndicator. We already have a custom design here,
 * and I don't know the advantages of switching.
 */

class PageIndicator extends StatelessWidget {
  final Color color; // colour to use for box decoration
  final int currentPage; // current page to highlight
  final int numPages; // total number of pages
  final double dotWidth; // width of dots (and sepeartor)
  final double dotHeight; // height of dots (and sepeartor)

  const PageIndicator(
      {Key? key,
      required this.color,
      required this.currentPage,
      required this.numPages,
      required this.dotWidth,
      required this.dotHeight})
      : super(key: key);

  // function to build page indicator as desired
  List<Widget> _buildRow(BuildContext context) {
    List<Widget> row = [];
    Widget spacing = SizedBox(
      height: dotHeight,
      width: dotWidth,
    );
    for (int counter = 0; counter < numPages; counter++) {
      // Add filled oval if counter is on current page;
      // else, add empty oval.
      counter + 1 == currentPage
          ? row.add(FilledOval(
              color: color,
              dotHeight: dotHeight,
              dotWidth: dotWidth,
            ))
          : row.add(EmptyOval(
              color: color,
              dotHeight: dotHeight,
              dotWidth: dotWidth,
            ));

      // add space if this isn't the last dot
      counter + 1 < numPages ? row.add(spacing) : null;
    }
    return row;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildRow(context),
    );
  }
}
