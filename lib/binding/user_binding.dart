import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    //~lazyPut()方法是延迟加载，只有在第一次使用时才会初始化
    Get.lazyPut<UserController>(() => UserController());
  }
}
