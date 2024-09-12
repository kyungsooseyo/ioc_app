import 'package:flutter/material.dart';

class MyImg extends StatelessWidget {
  const MyImg({super.key, required this.image});
  final Image image;
  @override
  Widget build(BuildContext context) {
    return image;
  }
}
