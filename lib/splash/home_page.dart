import 'package:flutter/material.dart';
import 'package:my_azkar/featured/home/widgets/tasbeeh_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الرئيسية")),
      
      // ✅ هنا نضيف الدروار
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'أذكار المسلم',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('الرئيسية'),
              onTap: () {
                Navigator.pop(context); // يرجّع الدروار
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('ختمة القرآن'),
              onTap: () {
                // افتح صفحة ختمة
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('الإعدادات'),
              onTap: () {
                // افتح صفحة الإعدادات
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            TasbeehScreen(), // ✅ أول كارت
            SizedBox(height: 20),
            Card(
              child: ListTile(
                title: Text("ميزة ثانية"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
