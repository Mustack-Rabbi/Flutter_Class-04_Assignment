# class_04_assignment

## Flutter Class 04:

> **Class 3 Topic:** BottomnNavigtionBar, elevation, BottomNavigationBarItem (icon,label), showSelectedLabels,showUnselectedLabels, selectedItemColor, unselectedItemColor, List[ ], Packege: Fluentui_icons 1.0.0, VS Code Extensions: Pubspec Assist (Joroen Meijer) .. etc

---

## Flutter Class 04 Assignment:

1.Please Create Bottom Navigation Bar

---

## Home Work:

> ### 1. main.dart

```dart
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
```

> ### 2. home.dart

```dart
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
```

> ### 3. button_bar.dart

```dart

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
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Person"),
        ]);
  }
}

```

## Result

---
![Class-04_Assignment_Pic(01)](https://user-images.githubusercontent.com/86506002/188386101-4efe85eb-8f81-417c-9a4e-09d1e8084716.jpg)

![Class-04_Assignment_Pic(02)](https://user-images.githubusercontent.com/86506002/188386377-e71d0338-5c06-4abc-8c02-ecaa9876c857.jpg)

![Class-04_Assignment_Pic(03)](https://user-images.githubusercontent.com/86506002/188386567-a23c29f4-22f0-499a-b6ff-d67da86372c7.jpg)



