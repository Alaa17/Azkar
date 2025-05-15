import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:my_azkar/constint.dart';
import 'package:my_azkar/splash/gard_view.dart';
import 'home_page.dart';

class HiddenDrawer extends StatefulWidget {
  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  late List<ScreenHiddenDrawer> pages;

  @override
  void initState() {
    super.initState();

    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "الرئيسية",
          baseStyle: TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: TextStyle(color: Colors.blueAccent, 
          fontWeight: FontWeight.bold),
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "حول التطبيق",
          baseStyle: TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: TextStyle(color: Colors.blueAccent, 
          fontWeight: FontWeight.bold),
        ),
        GardView(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      backgroundColorAppBar: Colors.deepPurple.shade300,
      screens: pages,
      initPositionSelected: 0,
      slidePercent: 60,
      contentCornerRadius: 20.0,
    );
  }
}
