import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticeGridView extends StatelessWidget {
  const PracticeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 5,
      crossAxisSpacing: 10,
      //~ 宽高比
      childAspectRatio: 2,
      children: [
        const Icon(Icons.map),
        const Icon(Icons.photo_album),
        const Icon(Icons.paid_sharp),
        Container(
          color: Colors.amber,
          child: const Text('123132'),
        ),
        Container(
          // width: 190,
          // height: 190,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text('Hello'),
        ),
        const Icon(Icons.safety_check),
      ],
    );
  }
}
