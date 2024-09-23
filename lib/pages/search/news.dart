import 'package:flutter/material.dart';

class News extends StatefulWidget {
  final String? title;
  final int id;
  const News({super.key, this.title = 'News Page', required this.id});
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('News initState ${widget.title}  ${widget.id}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ! 叹号的作用是断言title不为空,主要是因为上面定义的时候title是可选参数
        title: Text(widget.title!),
      ),
      body: const Center(
        child: Text('News Page'),
      ),
    );
  }
}
