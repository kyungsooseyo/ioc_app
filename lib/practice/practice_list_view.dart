import 'package:flutter/material.dart';

class PracticeLisView extends StatelessWidget {
  const PracticeLisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      // 添加边框
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      // padding: const EdgeInsets.all(10),

      child: ListView(
        children: const [
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
        ],
      ),
    );
  }
}
