import 'package:bottom_indicator_bar_fork/bottom_indicator_bar_fork.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titled Bar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BottomIndicatorNavigationBarItem> items = [
    BottomIndicatorNavigationBarItem(icon: "assets/icon.png", label: "Search"),
    BottomIndicatorNavigationBarItem(
        icon: "assets/icon.png", label: "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indicator Bottom Bar"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomIndicatorBar(
        onTap: (index) => print("Selected Index: $index"),
        items: items,
        activeColor: Colors.teal,
        inactiveColor: Colors.grey,
        indicatorColor: Colors.teal,
      ),
    );
  }
}
