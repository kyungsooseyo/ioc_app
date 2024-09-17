import 'package:flutter/material.dart';

class PracticeGridView2 extends StatelessWidget {
  const PracticeGridView2({super.key});
  Widget _initData(context, index) {
    return const ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
      contentPadding: EdgeInsets.symmetric(horizontal: 50),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20),
        // itemBuilder 创建100个列表项
        itemBuilder: (context, index) => _initData(context, index),
        itemCount: 20);
  }
}
