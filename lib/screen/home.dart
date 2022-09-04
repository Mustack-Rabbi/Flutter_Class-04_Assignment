import 'package:class_04_assignment/screen/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Class 04 Assignment")),
      body: Center(child: Text("data")),
      bottomNavigationBar: BottomBar(),
    );
  }
}
