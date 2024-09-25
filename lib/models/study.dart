import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class StudyState extends GetxController {
  //获取参数
  @override
  void onInit() {
    print('hahahaha');
    // TODO: implement onInit
    super.onInit();
  }

  RxInt state = 0.obs;
  get counter => state.value;
  set counter(value) => state.value = value;
  void increment() {
    state++;
    update();
  }
}
