import 'package:flutter/material.dart';

class ContactsCard extends StatefulWidget {

  final String _nameContact;
  final String _contact;

  ContactsCard(this._nameContact, this._contact);

  @override
  _ContactsCardState createState() => _ContactsCardState();
}

class _ContactsCardState extends State<ContactsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget._nameContact, style: TextStyle(fontSize: 20.0)),
        subtitle: Text(widget._contact, style: TextStyle(fontSize: 16.0)),
      ),
    );
  }
}