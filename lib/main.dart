import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import './routes/config_route.dart';
import 'practice/practice_wrap.dart';
import 'practice/practice_list_view.dart';
import 'practice/practice_list_view2.dart';
import 'practice/practice_list_view3.dart';
import 'practice/practice_grid_view.dart';
import 'practice/practice_grid_view2.dart';
import 'practice/practice_icon_container.dart';
import 'practice/practice_flex.dart';
import 'practice/practice_wrap.dart';
import 'practice/practice_stack.dart';
import 'practice/practice_aspectratio.dart';
import 'practice/practice_card.dart';
import 'practice/practice_button.dart';
import 'practice/practice_wrap2.dart';
import 'practice/practice_state.dart';
import 'practice/practice_state_list.dart';
import 'pages/tabs/study.dart';
import 'pages/tabs/business.dart';
import 'pages/tabs/home.dart';
import 'pages/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.blue,
          cardColor: Color.fromARGB(255, 65, 155, 220),
          backgroundColor: Colors.white,
          errorColor: Colors.red,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      home: const MyHomePage(title: 'Home Page'),
      getPages: ConfigRoute.getPages,
      defaultTransition: Transition.rightToLeft,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, this.age = 20});

  final String title;
  final int age;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<Widget> _pageList = [
    const Home(),
    const Business(),
    Study(),
  ];
  void _incrementCounter(BuildContext context) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    //  todo:使用developer.log打印日志
    debugPrint('数量:$_counter');
    developer.log('数量:$_counter', name: 'MyHomePage');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Search()),
    );
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            //~ 将来可以根据index来切换页面 把页面组件方到数组里面，然后根据index来取 通过body属性来切换
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        fixedColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '商城',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '学习',
          ),
        ],
      ),
      appBar: AppBar(
        //- 这个背景色会继承主题色
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //- 这个widget 是上下文的意思 能够拿到父类的一些属性;添加了age属性后，这里就可以拿到age属性
        title: Text(widget.title),
        // bottom: const TabBar(
        //   tabs: [
        //     Tab(text: '热门'),
        //     Tab(text: '推荐'),
        //     Tab(text: '关注'),
        //   ],
        // ),
      ),
      body: Container(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

            // ~ 因为有这个存在 文字会在右边，但是下面又设置了居中所以不能走到上方，最终文字就是在右侧居中
            // alignment: Alignment.topRight,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 241, 245, 255),
                border: Border(
                  right: BorderSide(color: Colors.amberAccent, width: 10),
                ),
                // shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),

            // child: const MyWrap(),
            // child: const PracticeLisView(),
            // child: const PracticeListView2(),
            // child: const PracticeListView3()),
            // child: const PracticeGridView2()),
            // child: const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     PracticeIconContainer(
            //         customIcon: Icon(Icons.ac_unit),
            //         color: Color.fromRGBO(116, 185, 255, 1)),
            //     PracticeIconContainer(
            //       customIcon: Icon(Icons.access_alarm),
            //     ),
            //     PracticeIconContainer(
            //       customIcon: Icon(Icons.access_time),
            //     ),
            //   ],
            // ))
            // child: const PracticeFlex()),
            // child: const PracticeStack()),
            // child: const PracticeAspectRatio()),
            // child: const PracticeCard()),
            // child: PracticeButton()),
            // child: const MyWrap()),
            // child: const PracticeWrap2()),
            // child: const PracticeState()),
            // child: const PracticeStateList()),
            child: _pageList[_currentIndex]),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'You have pushed the button this many times:',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
