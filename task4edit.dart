import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
    title: 'Simple Navigation App',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet),
            label: 'To Do List',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) => const FirstScreen());
          case 1:
            return CupertinoTabView(builder: (context) => const SecondScreen());
          default:
            return CupertinoTabView(builder: (context) => const FirstScreen());
        }
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('To Do List'),
      ),
      child: Center(
        child: Text("To Do List Screen", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: Center(
        child: Text("Settings Screen", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}