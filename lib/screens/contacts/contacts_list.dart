import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/components/contacts_components/contacts_card.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';
import 'package:project_bank_localdatabase_app/screens/contacts/contacts_form.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final _themeColors = ThemeColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColors.themeDefault,
        title: Text('Lista de Contatos'),
      ),
      body: Column(
        children: [
          ContactsCard('Michael', '11 96652-9159'),
        ],
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
