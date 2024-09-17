import 'package:flutter/material.dart';

class PracticeIconContainer extends StatelessWidget {
  final Color color;
  final Icon customIcon;
  const PracticeIconContainer(
      //! 如果给了默认值，那么这个参数就不是required的了
      {super.key,
      this.color = Colors.yellowAccent,
      required this.customIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      color: color,
      child: Icon(
        customIcon.icon,
        color: Colors.white,
        size: 100,
      ),
    );
  }
}
