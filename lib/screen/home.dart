import 'package:class_04_assignment/screen/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final List<Widget> _widgetOptions = [
    PageTextStyle(
      bodyTaxt: 'Home',
      myColors: Colors.red,
    ),
    PageTextStyle(
      bodyTaxt: 'Search',
      myColors: Colors.green,
    ),
    PageTextStyle(
      bodyTaxt: 'Ticket',
      myColors: Colors.blue,
    ),
    PageTextStyle(
      bodyTaxt: 'Profile',
      myColors: Colors.purple,
    ),
  ];
/* 
  static final List<String> _colorSelection = <String>[
    "Colors.red",
    "Colors.green",
    "Colors.yellow",
    "Colors.black",
  ];

  List colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
 */
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class PageTextStyle extends StatefulWidget {
  PageTextStyle({Key? key, required this.bodyTaxt, this.myColors})
      : super(key: key);

  String bodyTaxt;
  Color? myColors;

  @override
  State<PageTextStyle> createState() => _PageTextStyleState();
}

class _PageTextStyleState extends State<PageTextStyle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "এখন আছি - " + widget.bodyTaxt,
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: widget.myColors),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    //print('$_selectedIndex');
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
