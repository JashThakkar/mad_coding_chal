import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Nav Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Nav Example'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.adb_rounded),
            label: 'Zombies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Werewolf',
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Zombies', style: TextStyle(fontSize: 24)),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sceletons', style: TextStyle(fontSize: 24)),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('WereWolfs', style: TextStyle(fontSize: 24)),
    );
  }
}
