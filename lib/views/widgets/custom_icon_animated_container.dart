import 'package:flutter/material.dart';

class CustomIconAinmatedContainer extends StatelessWidget {
  const CustomIconAinmatedContainer({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: size,
      height: size,
      child: FittedBox(
        child: Icon(
          Icons.favorite,

          color: Colors.red,
        ),
      ),
    );
  }
}
