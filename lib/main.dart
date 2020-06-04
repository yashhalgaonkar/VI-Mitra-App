import 'package:flutter/material.dart';
import 'screens/user_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final isFaculty = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VI - Mitra',
      home: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          centerTitle: true,
          title: Text('VI - Mitra'),
        ),
        backgroundColor: Colors.white,
        body: UserDashboard(isFaculty: isFaculty),
      ),
    );
  }
}
