import 'package:flutter/material.dart';
import '../search/form.dart';
import '../search/news.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  void handleRoute(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return const MyForm();
        },
      ),
    );
  }

  void handleRouteNews(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return const News(
            title: 'tttttt',
            id: 1111,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //写一个button
        ElevatedButton(
            onPressed: () => handleRoute(context),
            child: const Text('route1',
                style: TextStyle(
                  color: Colors.black,
                ))),
        ElevatedButton(
            onPressed: () => handleRouteNews(context),
            child: const Text('news',
                style: TextStyle(
                  color: Colors.black,
                ))),
      ],
    );
  }
}
