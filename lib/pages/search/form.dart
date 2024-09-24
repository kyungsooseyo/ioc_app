import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ioc_app/controllers/home_controller.dart';

class MyForm extends StatefulWidget {
  final homeController = Get.put(HomeController());
  MyForm({Key? key}) : super(key: key);
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final Map<String, dynamic> arguments = Get.arguments;
  final int id = Get.arguments['id'];
  final String name = Get.arguments['name'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyForm Page'),
      ),
      body: Center(
        child: Text('name: $name'),
      ),
    );
  }
}
