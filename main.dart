import 'package:flutter/material.dart';

void main() => runApp(Uiproto());

class Uiproto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title: Text('Menu'),
              backgroundColor: Colors.green[900]),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.green[900]),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.green[900]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
              backgroundColor: Colors.green[900]),
        ],
      ),
    ));
  }
}
