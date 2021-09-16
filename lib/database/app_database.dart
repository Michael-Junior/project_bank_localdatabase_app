import 'package:project_bank_localdatabase_app/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//função para criar e retornar o banco de dados
Future<Database> getDatabase() async {
  //definindo nome do banco de dados 'bankApp.db'
  final String path = join(await getDatabasesPath(), 'bankApp.db');
  return openDatabase(
    path,
    //openDatabase abre e retorna o banco de dados e a versão
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
  );
}