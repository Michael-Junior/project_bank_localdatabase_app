import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/components/contacts_components/contacts_item.dart';
import 'package:project_bank_localdatabase_app/database/app_database.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';
import 'package:project_bank_localdatabase_app/screens/contacts/contacts_form.dart';

class ContactsList extends StatelessWidget {
  final _themeColors = ThemeColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColors.themeDefault,
        title: Text('Lista de Contatos'),
      ),
      //FutureBuilder atualiza a lista quando stateless
      body: FutureBuilder<List<Contact>>(
        //initialData: [], //Outra solução para ir para a tela de contatos sem erro
        future: Future.delayed(Duration(seconds: 1)).then((value) => findAll()),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none: //none: quando ainda não foi executado
              break;
            case ConnectionState
                .waiting: //waiting: quando o future ainda está carregando
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text('Loading...')
                  ],
                ),
              );
            case ConnectionState.active: //active: quando existe o dado no snapshot mas ainda não está concluido
              break;
            case ConnectionState.done: //done: quando está concluido
              final List<Contact> contacts = snapshot.data as List<Contact>;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Contact contact = contacts[index];
                  return ContactItem(contact);
                },
                itemCount: contacts.length,
              );
          }
          return Text('Unknown error');
        },
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
