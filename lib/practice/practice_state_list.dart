import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticeStateList extends StatefulWidget {
  const PracticeStateList({super.key});

  @override
  _PracticeStateListState createState() => _PracticeStateListState();
}

class _PracticeStateListState extends State<PracticeStateList> {
  final List _list = [];
  void onPressed() {
    setState(() {
      _list.add('Item ${_list.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              //=控制可滚动的ListView的高度
              height: 400,
              child: ListView(
                shrinkWrap: true,
                // children: _list
                //     .map((item) => ListTile(
                //           title: Text(item),
                //         ))
                //     .toList(),
                // ~ 如果放到[]里面使用展开运算符 就不用toList()了
                children: [
                  ..._list.map((item) => ListTile(
                        title: Text(item),
                      ))
                ],
              ),
            ),
            ElevatedButton(onPressed: onPressed, child: const Text('Add Item'))
          ],
        ));
  }
}
