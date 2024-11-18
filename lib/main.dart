import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/app_bindings.dart';
import 'tab_screen/tab_screen.dart';
import 'tab_screen/tab_screen1.dart';
import 'tab_screen/tab_screen2.dart';
import 'tab_screen/tab_screen3.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: AppBindings(),
      // binding to retain the state of the screen
      home: TabbedApp(),
    ),
  );
}

class TabbedApp extends StatefulWidget {
  @override
  _TabbedAppState createState() => _TabbedAppState();
}

class _TabbedAppState extends State<TabbedApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX  - bottom navigate bar'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          TabScreen(tag: 'tab1'),
          TabScreen1(tag: 'tab2'),
          TabScreen2(tag: 'tab3'),
          TabScreen3(tag: 'tab4'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
            backgroundColor: Colors.black38,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tab 2',
            backgroundColor: Colors.black38,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Tab 3',
            backgroundColor: Colors.black38,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tab 4',
            backgroundColor: Colors.black38,
          ),
        ],
      ),
    );
  }
}
