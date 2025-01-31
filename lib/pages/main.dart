import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import 'menu.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: MenuPage(),
      item: ItemConfig(
        icon: const Icon(Icons.home),
        title: "Home",
      ),
    ),
    PersistentTabConfig(
      screen: MenuPage(),
      item: ItemConfig(
        icon: const Icon(Icons.message),
        title: "Messages",
      ),
    ),
    PersistentTabConfig(
      screen: MenuPage(),
      item: ItemConfig(
        icon: const Icon(Icons.settings),
        title: "Settings",
      ),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PersistentTabView(
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      )
      ,
    );
  }
}