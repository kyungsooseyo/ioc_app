import 'package:flutter/material.dart';
import 'practice_icon_container.dart';

class PracticeFlex extends StatelessWidget {
  const PracticeFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 1,
          child: PracticeIconContainer(customIcon: Icon(Icons.add)),
        ),
        Image.asset(
          'assets/images/b-clock.png',
          width: 100,
          height: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        const Expanded(
          flex: 3,
          child: PracticeIconContainer(
            customIcon: Icon(Icons.read_more),
            color: Colors.pinkAccent,
          ),
        ),
      ],
    );
  }
}
