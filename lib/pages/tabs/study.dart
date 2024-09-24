import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/study.dart';

// ignore: must_be_immutable
class Study extends StatelessWidget {
  //获取参数
  //! 必须用Get.arguments来取值 不能先把arguments定义出来再赋值
  late final String name = Get.arguments['name']!;
  late final int id = Get.arguments['id']!;

  var studyState = Get.put(StudyState());
  Study({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Page'),
      ),
      body: Center(
        child: Text(
          'name: $name, id: $id, counter: ${studyState.counter}',
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        // child: Text(
        //   'counter: ${studyState.counter}',
        //   style: const TextStyle(
        //     fontSize: 30,
        //   ),
        // ),
      ),
    );
  }
}
