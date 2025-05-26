
import 'package:flutter/material.dart';

class SildingText extends StatelessWidget {
  const SildingText({
    super.key,
    required this.sildingAnimation,
  });

  final Animation<Offset> sildingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: sildingAnimation, builder: (context, child) {
      return SlideTransition(
        position: sildingAnimation,
        child: Text(
          "Read Free Books",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
      );
    },);
  }
}
