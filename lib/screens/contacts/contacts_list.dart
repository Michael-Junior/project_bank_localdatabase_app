import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/components/contacts_components/contacts_card.dart';

class ContactsList extends StatefulWidget {

  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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