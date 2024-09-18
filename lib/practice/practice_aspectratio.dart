import 'package:flutter/material.dart';

class PracticeAspectRatio extends StatelessWidget {
  const PracticeAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        color: Colors.greenAccent,
      ),
    );
  }
}
