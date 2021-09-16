import 'package:flutter/material.dart';
import 'package:project_bank_localdatabase_app/database/dao/contact_dao.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';
import 'package:project_bank_localdatabase_app/models/theme_colors.dart';
import 'package:project_bank_localdatabase_app/screens/contacts_form.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final _themeColors = ThemeColors();
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColors.themeDefault,
        title: Text('Contatos'),
      ),
      body: FutureBuilder<List<Contact>>(
        //initialData: [], //Outra solução para ir para a tela de contatos sem erro
        future: Future.delayed(Duration(seconds: 1)).then((value) => _dao.findAll()),
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
              final List<Contact>? contacts = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Contact contact = contacts![index];
                  return _ContactItem(contact);
                },
                itemCount: contacts!.length,
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
                MaterialPageRoute(
                  builder: (context) => ContactsForm(),
                ),
              )
              .then((value) => setState(() {}));
        },
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final Contact contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name, style: TextStyle(fontSize: 20.0)),
        subtitle: Text(contact.accountNumber.toString(),
            style: TextStyle(fontSize: 16.0)),
      ),
    );
  }
}