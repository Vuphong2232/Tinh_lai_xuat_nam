import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Máy tính lãi suất',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Color(0xFF6D4C41), // nâu
        scaffoldBackgroundColor: Color(0xFFF5F5F5), // nền sáng
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF6D4C41),
          foregroundColor: Colors.white,
        ),
      ),

      home: HomeView(),
    );
  }
}