import 'package:flutter/material.dart';

class CustomTweenAnimatedBuilder extends StatelessWidget {
  const CustomTweenAnimatedBuilder({
    super.key,
    required bool isLeft,
    required double angle,
  }) : _isLeft = isLeft,
       _angle = angle;

  final bool _isLeft;
  final double _angle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.grey.shade200,
      child: AnimatedAlign(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        alignment: _isLeft ? Alignment.centerLeft : Alignment.centerRight,
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: _angle, end: _angle + 3.14),
          duration: const Duration(seconds: 1),
          builder: (context, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: child,
            );
          },
          child: const Icon(Icons.star, size: 80, color: Colors.orange),
        ),
      ),
    );
  }
}
