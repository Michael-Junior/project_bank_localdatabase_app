import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';
import 'package:project_bank_localdatabase_app/screens/contacts_list.dart';


class DashBoardScreen extends StatelessWidget {

  final ThemeColors _themeColors = ThemeColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: _themeColors.themeDefault,
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

class ButtomDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Material(
        color: Colors.lightBlue[900],
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ContactsList()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(8),
            width: 150,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.people,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(
                  'Contacts',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}