import 'package:flutter/material.dart';

class SlideUpAnimation extends StatelessWidget {
  final Widget child;

  const SlideUpAnimation({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 700),
      tween: Tween<double>(begin: 1, end: 0),
      curve: Curves.easeOutCubic,
      builder: (_, double value, __) {
        return Transform.translate(
          offset: Offset(0, value * 300),
          child: child,
        );
      },
    );
  }
}
