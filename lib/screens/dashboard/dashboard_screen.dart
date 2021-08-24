import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/components/dashboard_components/buttom_dashboard.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(7),
            child: Image.asset('assets/images/image_bank.png'),
          ),
          ButtomDashboard(),
        ],
      ),
    );
  }
}