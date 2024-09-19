import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
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
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        //- 这个背景色会继承主题色
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
            child: const PracticeStateList()),

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
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
