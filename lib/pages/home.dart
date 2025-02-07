import 'package:demobb/pages/login.dart';
import 'package:demobb/pages/menu.dart';
import 'package:flutter/material.dart';

import '../shared/bottom_nav.dart';
import '../shared/toolbar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MenuPage(),
    LoginPage(),
    Center(child: Text('Página 3', style: TextStyle(fontSize: 24))),
    Center(child: Text('Página 4', style: TextStyle(fontSize: 24))),
    Center(child: Text('Página 5', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    /*setState(() {
      _selectedIndex = index;

    });*/
    Navigator.pushNamed(context, '/Transferir');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body:
      MenuPage(),
      bottomNavigationBar: BottomNav(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped,),
    );
  }
}