import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ioc_app/controllers/study_controller.dart';

import '../search/news.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  void handleRoute(BuildContext ctx) {
    Get.toNamed('/study');
  }

  void handleRouteNews(BuildContext ctx) {
    //= 能不能在下个页面看到返回的图标取决于用的什么方法 用off就没有返回图标;右滑也返回不了
    Get.to(const News(
      title: 'News',
      id: 1111,
    ));
  }

  void handleTestDialog() {
    Get.defaultDialog(
      title: 'Dialog',
      //~这个属性就是点击外部区域是否会关闭弹窗
      barrierDismissible: false,
      content: const Text('This is a dialog'),
      textConfirm: 'OK',
      textCancel: 'Cancel',
      onConfirm: () {
        Get.back();
      },
      onCancel: () {
        Get.back();
      },
    );
  }

  void handleTestSnap() {
    Get.snackbar('title', 'message');
  }

  void handleTestToast() {}
  void handleLogin(BuildContext ctx) {
    Get.toNamed('/user');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //写一个button
        ElevatedButton(
            onPressed: () => handleRoute(context),
            child: const Text('route study',
                style: TextStyle(
                  color: Colors.black,
                ))),
        ElevatedButton(
            onPressed: () => handleRouteNews(context),
            child: const Text('news',
                style: TextStyle(
                  color: Colors.black,
                ))),
        TextButton(
            onPressed: handleTestDialog, child: const Text('text button')),
        TextButton(
            onPressed: handleTestSnap, child: const Text('text button111')),
        TextButton(onPressed: handleTestToast, child: const Text('toast')),
        //! 这样的逻辑是对的 进入到study进行加数后 因为在外层还用到这个controller 所以他不会销毁;并且这在勾着状态 所以StudyController的init在初始化就直接执行了
        Obx(() => Text('count: ${Get.find<StudyController>().counter}',
            style: const TextStyle(fontSize: 30, color: Colors.green))),
        TextButton(
            onPressed: () => handleLogin(context), child: const Text('login')),
        TextButton(
            onPressed: Get.find<StudyController>().increment,
            child: const Text('增加study count')),
      ],
    );
  }
}
