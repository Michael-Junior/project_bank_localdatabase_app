import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';

class ContactsForm extends StatefulWidget {
  @override
  _ContactsFormState createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  final ThemeColors _themeColors = ThemeColors();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: _themeColors.themeDefault,
            title: Text('New contact'),
          ),
          body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Full name'),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    controller: _accountNumberController,
                    decoration: InputDecoration(labelText: 'Account number'),
                    style: TextStyle(fontSize: 20.0),
                    keyboardType: TextInputType.number,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        child: Text('Create'),
                        onPressed: () {
                          final String name = _nameController.text;
                          final int? accountNumber = int.tryParse(_accountNumberController.text);

                          final Contact newContact = Contact(0, name, accountNumber!);
                          Navigator.pop(context, newContact);

                        },
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
