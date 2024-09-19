import 'package:flutter/material.dart';
import 'package:ioc_app/components/my_button.dart';
import 'dart:developer' as developer;

class PracticeWrap2 extends StatelessWidget {
  const PracticeWrap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 9, //- horizontal space between buttons
      runSpacing: 10, //- vertical space between buttons
      children: [
        MyButton(
            color: Colors.red,
            onPressed: () => developer.log('Button 1 pressed'),
            child: const Text('Button 1')),
        MyButton(
            color: Colors.blue,
            onPressed: () => developer.log('Button 2 pressed'),
            child: const Text('Button 2')),
        MyButton(
            color: Colors.cyan,
            onPressed: () => developer.log('Button 3 pressed'),
            child: const Text('Button 3')),
        MyButton(
            onPressed: () => developer.log('Button 4 pressed'),
            child: const Text('Button 4')),
        MyButton(
            onPressed: () => developer.log('Button 5 pressed'),
            child: const Text('Button 5')),
        MyButton(
            onPressed: () => developer.log('Button 6 pressed'),
            child: const Text('Button 6')),
        MyButton(
            onPressed: () => developer.log('Button 7 pressed'),
            child: const Text('Button 7')),
        MyButton(
            onPressed: () => developer.log('Button 8 pressed'),
            child: const Text('Button 8')),
        MyButton(
            onPressed: () => developer.log('Button 9 pressed'),
            child: const Text('Button 9')),
        MyButton(
            onPressed: () => developer.log('Button 10 pressed'),
            child: const Text('Button 10')),
      ],
    );
  }
}
