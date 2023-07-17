import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphHomeWidget extends StatelessWidget {
  const GlassmorphHomeWidget(
      {super.key,
      required this.height,
      required this.child,
      required this.colors,
      required this.width});
  final double height;
  final double width;
  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
