import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'models/contact.dart';
import 'screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(BankApp());
  save(Contact(1, 'Michael', 1000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
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
