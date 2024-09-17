import 'package:flutter/material.dart';

class PracticeLisView extends StatelessWidget {
  const PracticeLisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      // 添加边框
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      // padding: const EdgeInsets.all(10),

      child: ListView(
          // children: List.generate(100, (index) => _initData(context, index)),
          ),
    );
  }
}
