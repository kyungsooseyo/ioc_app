import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticeStack extends StatelessWidget {
  const PracticeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.redAccent,
      child: Stack(
        //. stack是一个绝对定位的容器 默认相对于父容器的左上角
        //· 这个写法会让text水平垂直居中
        // alignment: AlignmentGeometry.lerp(
        //   Alignment.topLeft,
        //   Alignment.bottomRight,
        //   0.5,
        // )!,

        children: [
          Positioned(
              left: 0,
              bottom: 20,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              )),
          const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
