import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/screens/contacts/contacts_form.dart';
import 'package:project_bank_localdatabase_app/screens/contacts/contacts_screen.dart';
import 'package:project_bank_localdatabase_app/screens/dashboard/dashboard_screen.dart';

void main() => runApp(BankApp());

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}