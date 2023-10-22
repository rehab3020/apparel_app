import 'package:market_apparel/models/users.dart';
import 'package:sqflite/sqflite.dart';

late Database database;

void createDatabase() async {
  database = await openDatabase(
    'users.db',
    version: 2,
    onCreate: (db, version) async {
      print('database is created');
      await db
          .execute(
              'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT)')
          .then((value) {
        print('TABLE is created');
      }).catchError((onError) {
        print('some error happen when create table $onError');
      });
    },
    onOpen: (db) {
      getDataFromDatabase(db).then((value) {
        users = value;
        print('database is opened');
      });
    },
  );
}

Future insertDatabase({
  required String name,
  required String email,
  required String password,
}) async {
  return await database.transaction((txn) async {
    txn
        .rawInsert(
            'INSERT INTO Users(name, email, password) VALUES("$name", "$email", "$password")')
        .then((value) {
      print("$value inserted successfully");
    }).catchError((onError) {
      print('some error happen when insert item $onError ');
    });
  });
}

Future<List<Map>> getDataFromDatabase(Database database) async {
  return await database.rawQuery('SELECT * FROM users');
}

void deletItemFromDatabase({required String email}) async {
  await database.rawDelete('DELETE FROM users WHERE email = ?', [email]);
  print('deleted successfully');
}
