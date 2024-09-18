import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final String description;
  final String url;
  ListItem({required this.title, required this.description, required this.url});
}

class PracticeCard extends StatelessWidget {
  const PracticeCard({super.key});

  @override
  Widget build(BuildContext context) {
    // List<ListItem> list = [
    //   ListItem(
    //     title: "Practice Wrap",
    //     description: "This is a practice of Wrap widget",
    //     url: "https://images.dog.ceo/breeds/poodle-toy/n02113624_1023.jpg",
    //   ),
    //   ListItem(
    //     title: "Practice ListView",
    //     description: "This is a practice of ListView widget",
    //     url: "https://cdn2.thecatapi.com/images/JYLVJkyq_.jpg",
    //   ),
    //   ListItem(
    //     title: "Practice ListView2",
    //     description: "This is a practice of ListView widget",
    //     url:
    //         "https://park4-visitor-uat.s3.cn-north-1.jdcloud-oss.com/image/home/logo.png",
    //   ),
    // ];
    var a = {
      "title": "Practice Wrap",
      "description": "This is a practice of Wrap widget",
      "url": "https://images.dog.ceo/breeds/poodle-toy/n02113624_1023.jpg",
    };
    a.remove('title');
    print(a);

    List list = [
      {
        "title": "Practice Wrap",
        "description": "This is a practice of Wrap widget",
        "url": "https://images.dog.ceo/breeds/poodle-toy/n02113624_1023.jpg",
      },
      {
        "title": "Practice ListView",
        "description": "This is a practice of ListView widget",
        "url": "https://cdn2.thecatapi.com/images/JYLVJkyq_.jpg",
      },
      {
        "title": "Practice ListView2",
        "description": "This is a practice of ListView widget",
        "url":
            "https://park4-visitor-uat.s3.cn-north-1.jdcloud-oss.com/image/home/logo.png",
      },
    ];
    return ListView(
      children: [
        ...list.map((item) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,

                  //! 如果使用了decoration 那么就必须在decoration里面使用color 不能在外面使用color
                  // color: Colors.amberAccent,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  // child: Image.network(
                  //   'https://park4-visitor-uat.s3.cn-north-1.jdcloud-oss.com/image/park-fees/success-pay-background.png',
                  //   width: 100,
                  //   fit: BoxFit.contain,
                  // ),
                ),
                ListTile(
                  leading: const Icon(Icons.map),
                  //~ 如果没指定list的类型 不能使用点语法 会报错;如果使用了类型声明 还必须使用点语法 且有提示
                  title: Text(item['title']),
                  subtitle: Text(item['description']),
                  trailing: const Icon(Icons.more_vert),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
