import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/user_controller.dart';

class UserLogin extends GetView<UserController> {
  //= 如果在路由里面指定了binding 那么就不再需要使用Get.find来获取controller了 直接使用controller即可 但是必须在GetView里面指定泛型
  final UserController user = Get.find<UserController>();
  UserLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('${user.useName}')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Obx(() => Text('count: ${user.counter}')),
            ElevatedButton(
              onPressed: () {
                // user.changeUserName('李四');
                user.increment();
              },
              child: const Text('Change Name'),
            ),
          ],
        ),
      ),
    );
  }
}
