import 'package:get/get.dart';
import '../pages/tabs/home.dart';
import '../pages/tabs/study.dart';

class ConfigRoute {
  static const String initial = '/';
  static const String home = '/home';
  static const String study = '/study';
  static final List<GetPage> getPages = [
    GetPage(name: initial, page: () => const Home()),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: study, page: () => Study()),
  ];
}
