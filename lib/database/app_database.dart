import 'package:path/path.dart';
import 'package:project_bank_localdatabase_app/models/contact.dart';
import 'package:sqflite/sqflite.dart';

//função para criar e retornar o banco de dados
Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    //definindo nome do banco de dados 'bankApp.db'
    final String path = join(dbPath, 'bankApp.db');
    //openDatabase abre e retorna o banco de dados e a versão
    return openDatabase(path, onCreate: (db, version) {
      //query para criação da tabela 'contacts' e campos no banco de dados
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER)');
      //determinando a versão do banco de dados
    }, version: 1);
  });
}

//função para salvar as informações no banco de dados
Future<int> save(Contact contact){
  return createDatabase().then((db) {

    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return db.insert('contacts', contactMap);
  });
}

//função para buscar informações no banco de dados
Future<List<Contact>> findAll(){
  return createDatabase().then((db){
    return db.query('contacts').then((maps){
      final List<Contact> contacts = [];
      for (Map<String, dynamic> map in maps){
        final Contact contact = Contact(
          map['id'],
          map['name'],
          map['account_number'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });
}