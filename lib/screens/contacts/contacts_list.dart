import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/components/contacts_components/contacts_item.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';
import 'package:project_bank_localdatabase_app/screens/contacts/contacts_form.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final _themeColors = ThemeColors();

  final List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColors.themeDefault,
        title: Text('Lista de Contatos'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Contact contact = contacts[index];
          return ContactsItem(contact);
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _themeColors.themeDefault,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(builder: (context) => ContactsForm()),
              )
              .then((newContact) => debugPrint(newContact.toString()));
        },
      ),
    );
  }
}
