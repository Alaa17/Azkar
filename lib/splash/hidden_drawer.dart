import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:my_azkar/featured/home/widgets/tasbeeh_card.dart';
import 'package:my_azkar/splash/azkar.dart';
import 'package:my_azkar/splash/home_page.dart';
import 'package:my_azkar/splash/doaa.dart';
import 'package:my_azkar/splash/home_view_body.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

// ignore: non_constant_identifier_names
List<ScreenHiddenDrawer> _Pages = [];
final myTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white
      );

@override
  void initState() {
    super.initState();


_Pages = [
  ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الرئيسية',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 2
      
      ),
      colorLineSelected: Colors.deepPurple,

    ),
  HomePage(),
  ),
  ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الدعاء',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  HomeView(),
  ),
  ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الاحاديث',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  HomeViewBody(),
  ),
  ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الاستغفار',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  Azkar(),
  ),
  ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'سنن الجمة',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  Azkar(),
  ),ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الرقية الشرعية',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  Azkar(),
  ),ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'الاربعون النووية',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  Azkar(),
  ),ScreenHiddenDrawer(
    ItemHiddenMenu(
      name: 'دليل الحج والعمرة',
      baseStyle: myTextStyle,
      selectedStyle: TextStyle(),
      colorLineSelected: Colors.deepPurple
    ),
  Azkar(),
  ),
];


  }
  @override
  Widget build(BuildContext context) {
    
    return  HiddenDrawerMenu(
      backgroundColorAppBar: Color(0xffccb0e0), // يخلي الثلاث شرط بلونك
  backgroundColorMenu: Colors.deepPurple.shade300,
      screens: _Pages,
      initPositionSelected: 0,
      slidePercent: 60,
      contentCornerRadius: 50,
     // boxShadow: [],
     
    );
    //  backgrundColorMenu: Colors.deepPurple,
    
      
    
  }
}
