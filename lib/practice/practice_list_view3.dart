import 'package:flutter/material.dart';
import 'package:ioc_app/practice/list_data.dart';

class PracticeListView3 extends StatelessWidget {
  const PracticeListView3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...list.map((item) {
          return ListTile(
            leading: const Icon(Icons.map),
            title: Text(item.title),
            subtitle: Text(item.description),
            trailing: Image.network(
              item.url,
              width: 100,
              fit: BoxFit.cover,
            ),
            // onTap: () {
            //   Navigator.pushNamed(context, item.route);
            // },
          );
        })
      ],
    );
  }
}
