import 'package:class_04_assignment/screen/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Class 04 Assignment")),
      body: Center(child: HomePage._widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomBar(
        onTap: _onItemTapped,
        currentIndext: _selectedIndex,
      ),
    );
  }
}
