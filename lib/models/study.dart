import 'package:get/get.dart';

class StudyState extends GetxController {
  //获取参数
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  var state = 0.obs;
  get counter => state.value;
  set counter(value) => state.value = value;
  void increment() {
    state++;
  }
}
