import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PracticeButton extends StatelessWidget {
  PracticeButton({super.key});
  void _handleElevatedButtonPress() {
    print('Button is pressed');
  }

  void onPressed() {
    print('Button is pressed');
  }

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            //~ 给按钮最外层加盒子，可以设置按钮的宽高
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                    // shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    //   RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    // ),
                    // 改成圆形
                    shape: WidgetStateProperty.all<CircleBorder>(
                      const CircleBorder(),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.greenAccent),
                    foregroundColor: WidgetStateProperty.all<Color>(
                        Color.fromARGB(255, 218, 72, 154)),
                  ),
                  onPressed: _handleElevatedButtonPress,
                  child: const Text('Elevated Button')),
            ),
            OutlinedButton(
                onPressed: onPressed, child: const Text('Outlined Button')),
            GestureDetector(
              child:
                  IconButton(onPressed: onPressed, icon: const Icon(Icons.add)),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text('Expanded Button')),
                )),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text('Expanded Button')),
            ),
          ],
        )
      ],
    );
  }
}
