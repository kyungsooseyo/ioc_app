import 'package:flutter/material.dart';
import 'package:ioc_app/components/my_button.dart';
import 'dart:developer' as developer;
import '../components/font.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      //! 这个属性改了 原来叫mainAxisAlignment
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      children: [
        const Text(
          'kk',
          style: TextStyle(color: Colors.cyan, fontSize: 50),
        ),
        const Text('hh', style: TextStyle(color: Colors.pink, fontSize: 55)),
        MyButton(onPressed: handlePress, child: const Text('click me')),
        Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
              //~ 这种方式相当于css的背景图片 如果把img作为child是没办法改变形状的
              image: DecorationImage(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))),

          // child: MyImg(
          //   image: Image.network(
          //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          //     // fit: BoxFit.cover,
          //   ),
          // ),
        ),
        // ! 路径前面不能加assets
        Image.asset(
          'images/b-clock.png',
          width: 20,
          height: 20,
        ),
        const Icon(
          Icons.wechat,
          size: 40,
          color: Colors.teal,
        ),
        const Icon(MyIcon.book, size: 40, color: Colors.orange),
        Container(
          width: 100,
          height: 100,
          color: Colors.transparent,
          child: ListView(
            children: List.generate(
                10,
                (index) => Container(
                      height: 20,
                      color: Colors.purple,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                            child: Text('第$index个'),
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }

  void handlePress() {
    print('click me');
    //! 这个log将来会在debugger模式下才会输出 即flutter run --debug 或者点击左边的那个调试按钮
    developer.log('click me111', name: 'MyWrap');
  }
}
