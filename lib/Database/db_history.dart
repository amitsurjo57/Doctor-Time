import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'history_model.dart';

class DbHistory {
  static Database? _db;
  dynamic db2;
  dynamic count;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }

    _db = await initDatabase();
    return _db!;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "history.db");
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE history (id INTEGER PRIMARY KEY, doctor_image_path TEXT, doctor_name TEXT, doctor_type TEXT, date TEXT, time TEXT, call_type TEXT)");
  }

  Future<AppointmentHistory> insert(AppointmentHistory history) async {
    var dbClient = await db;
    await dbClient!.insert("history", history.toMap());
    return history;
  }

  Future<List<AppointmentHistory>> getHistoryList() async {
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('history');
    return queryResult.map((e) => AppointmentHistory.fromMap(e)).toList();
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient!.delete(
      'history',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
