import 'package:flutter/material.dart';

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