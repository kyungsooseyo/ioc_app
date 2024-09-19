import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.color = Colors.green});

  final VoidCallback onPressed;
  final Widget child;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(color),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
