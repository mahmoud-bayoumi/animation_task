import 'package:flutter/material.dart';

class AnimatedPersonIcon extends StatelessWidget {
  const AnimatedPersonIcon({
    super.key,
    required bool isTop,
    required this.rotateAngle,
  }) : _isTop = isTop;

  final bool _isTop;
  final double rotateAngle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      height: 190,
      child: AnimatedAlign(
        alignment: _isTop ? Alignment.topCenter : Alignment.bottomCenter,
        duration: Duration(seconds: 1),
        child: TweenAnimationBuilder<double>(
          duration: Duration(seconds: 1),
          tween: Tween<double>(
            begin: rotateAngle,
            end: rotateAngle + 6.28,
          ),
          builder: (context, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: Icon(
                Icons.accessibility_new_outlined,
                size: 32,
              ),
            );
          },
        ),
      ),
    );
  }
}
