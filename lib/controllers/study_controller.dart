import 'package:get/get.dart';
import 'package:logger/logger.dart';

class StudyController extends GetxController {
  final logger = Logger();
  //获取参数
  @override
  void onInit() {
    super.onInit();
    // logger.i('onInit');
  }

  RxInt state = 0.obs;
  get counter => state.value;
  set counter(value) => state.value = value;
  void increment() {
    logger.w('哈哈1');
    logger.d('哈哈2');
    logger.i('哈哈3');
    state++;
    update();
  }
}
