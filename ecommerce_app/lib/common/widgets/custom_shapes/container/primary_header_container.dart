import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryheaderContainer extends StatelessWidget {
  const TPrimaryheaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCirculateContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: TCirculateContainer(backgroundColor: TColors.textWhite.withOpacity(0.081))),
            child,
          ],
        ),
      ),
    );
  }
}
