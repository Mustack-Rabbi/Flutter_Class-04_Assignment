import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key, required this.onTap, required this.currentIndext})
      : super(key: key);
  final void Function(int) onTap;
  final int currentIndext;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentIndext,
        onTap: widget.onTap,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ]);
  }
}
