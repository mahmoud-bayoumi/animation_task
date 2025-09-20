import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(const AnimationTaskApp());
}

class AnimationTaskApp extends StatelessWidget {
  const AnimationTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
