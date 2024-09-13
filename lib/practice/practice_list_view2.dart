import 'package:flutter/material.dart';

class PracticeListView2 extends StatelessWidget {
  const PracticeListView2({super.key});
  List<Widget> _initState() {
    return const [
      ListTile(
        leading: Icon(Icons.map),
        title: Text('Map'),
        contentPadding: EdgeInsets.symmetric(horizontal: 50),
      ),
      Divider(height: 5),
      ListTile(
        leading: Icon(
          Icons.photo_album,
          color: Colors.amber,
        ),
        title: Text('Album'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ..._initState(),
      ],
    );
  }
}
