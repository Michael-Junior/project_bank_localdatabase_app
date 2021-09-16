import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}
