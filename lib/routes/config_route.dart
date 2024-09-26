import 'package:get/get.dart';
import '../pages/tabs/home.dart';
import '../pages/tabs/study.dart';
import '../pages/user/user_login.dart';

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
    GetPage(
      name: study,
      page: () => Study(),
    ),
    GetPage(
      name: user,
      page: () => UserLogin(),
    ),
  ];
}
