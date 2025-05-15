
import 'package:flutter/material.dart';
import 'package:my_azkar/splash/hidden_drawer.dart';

void main() {
  runApp(MyAzkarApp());
}

class MyAzkarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
      title: 'تطبيقي',
           theme: ThemeData(primarySwatch: Colors.deepPurple),

       // هنا نبدأ من الهيدن دراور
    );
  }
}
