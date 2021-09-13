import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'models/contact.dart';
import 'screens/dashboard/dashboard.dart';

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
