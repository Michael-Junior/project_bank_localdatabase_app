import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';

class ContactsItem extends StatelessWidget {

  final Contact contact;

  ContactsItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name, style: TextStyle(fontSize: 20.0)),
        subtitle: Text(contact.accountNumber.toString(), style: TextStyle(fontSize: 16.0)),
      ),
    );
  }
}