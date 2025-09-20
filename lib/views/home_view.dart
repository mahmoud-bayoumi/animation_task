import 'package:animation_task/views/widgets/animated_person_icon.dart';
import 'package:animation_task/views/widgets/custom_icon_animated_container.dart';
import 'package:animation_task/views/widgets/custom_tween_animated_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double size = 100;
  bool _isLeft = true;
  double _angle = 0;
  double rotateAngle = 0;
  bool _isTop = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomIconAinmatedContainer(size: size),
            CustomTweenAnimatedBuilder(isLeft: _isLeft, angle: _angle),
            AnimatedPersonIcon(isTop: _isTop, rotateAngle: rotateAngle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            size = size == 100 ? 400 : 100;
            _isLeft = !_isLeft;
            _angle += 3.14; // rotate 180° each move
            _isTop = !_isTop;
            rotateAngle += 6.28;
          });
        },
      ),
    );
  }
}
