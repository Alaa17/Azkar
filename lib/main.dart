import 'package:flutter/material.dart';
import 'package:my_azkar/splash/hidden_drawer.dart';
import 'package:my_azkar/splash/home_page.dart';


void main() {
  runApp(const MyAZKAR());
}

class MyAZKAR extends StatelessWidget {
  const MyAZKAR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
     theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
