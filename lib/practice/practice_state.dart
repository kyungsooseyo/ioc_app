import 'package:flutter/material.dart';

class PracticeState extends StatefulWidget {
  const PracticeState({super.key});

  @override
  _PracticeStateState createState() => _PracticeStateState();
}

class _PracticeStateState extends State<PracticeState> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            // style: Theme.of(context).textTheme.headlineLarge,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Text('Increment'),
          ),
          FloatingActionButton(
              child: const Icon(Icons.minimize_outlined),
              onPressed: () {
                setState(() {
                  _counter--;
                });
              })
        ],
      ),
    );
  }
}
