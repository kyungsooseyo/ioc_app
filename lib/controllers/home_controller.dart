import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  final _counter = 0.obs;
  get counter => _counter.value;
  set counter(value) => this._counter.value = value;

  void increment() {
    counter++;
  }
}
