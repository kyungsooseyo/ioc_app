import 'package:get/get.dart';
import '../pages/tabs/home.dart';
import '../pages/tabs/study.dart';
import '../pages/user/user_login.dart';
import '../binding/user_binding.dart';

class ConfigRoute {
  static const String initial = '/';
  static const String home = '/home';
  static const String study = '/study';
  static const String user = '/user';
  static final List<GetPage> getPages = [
    GetPage(
      name: initial,
      page: () => const Home(),
    ),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: study, page: () => Study()),
    //!（必须定义binding 否则出错不知道为什么） 这必须用单独的binding 不能用全局的binding 还是在全局注册简单 在每个子页面直接调用Get.find
    GetPage(name: user, page: () => UserLogin(), binding: UserBinding()),
    // GetPage(
    //   name: user,
    //   page: () => UserLogin(),
    // ),
  ];
}
