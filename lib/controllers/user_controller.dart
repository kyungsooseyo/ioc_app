import 'package:get/get.dart';
import 'package:logger/logger.dart';

class UserController extends GetxController {
  final logger = Logger();
  //获取参数
  @override
  void onInit() {
    super.onInit();
    logger.i('user onInit');
  }

  @override
  void dispose() {
    super.dispose();
    logger.i('user dispose');
  }

  @override
  void onClose() {
    logger.i('user onClose');
  }

  RxInt state = 0.obs;
  get counter => state.value;
  set counter(value) => state.value = value;
  RxString useName = '张三'.obs;
  get userName => useName.value;

  void increment() {
    counter++;
    update();
  }
}
