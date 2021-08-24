import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class ButtomDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: EdgeInsets.all(8),
        width: 150,
        height: 100,
        color: Colors.lightBlue[900],
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
    );
  }
}

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: [
          ContactsCard(),
          ContactsCard(),
          ContactsCard(),
          ContactsCard(),
          ContactsCard(),
          ContactsCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class ContactsCard extends StatefulWidget {

  @override
  _ContactsCardState createState() => _ContactsCardState();
}

class _ContactsCardState extends State<ContactsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Michael'),
        subtitle: Text('1234'),
      ),
    );
  }
}

