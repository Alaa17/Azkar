import 'package:flutter/material.dart';
import 'package:my_azkar/featured/home/widgets/tasbeeh_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TasbeehScreen(), // الكارت الأول
              SizedBox(height: 20),
              Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.favorite, color: Colors.red),
                  title: Text("ميزة ثانية"),
                ),
              ),
              // تقدر تضيف كروت تانية هنا
            ],
          ),
        ),
      ),
    );
  }
}
