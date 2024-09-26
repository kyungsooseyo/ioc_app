import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/study_controller.dart';

class Study extends StatelessWidget {
  //获取参数
  //! 必须用Get.arguments来取值 不能先把arguments定义出来再赋值
  // late final String name = Get.arguments['name']!;
  // late final int id = Get.arguments['id']!;
  //` 在main里面指定binding了 所以这里可以直接用Get.find
  final StudyController studyState = Get.find<StudyController>();
  Study({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Page'),
      ),
      body: Center(
          child: Column(
        children: [
          //! 用Obx来监听变化 不加的话数值会变化 但是页面不会刷新
          Obx(() => Text(
                'counter: ${studyState.counter}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              )),
          ElevatedButton(
            onPressed: () {
              studyState.increment();
            },
            child: const Text('Increment'),
          ),
        ],
      )),
    );
  }
}
