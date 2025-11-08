import 'dart:io';

import 'package:aplicativofinal/models/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  static const int _version = 1;
  static const String _dbName = "medalert_db.db";

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return openDatabase(path, onCreate: _createDb, version: _version);
  }

  Future _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users
      (id INTEGER PRIMARY KEY AUTOINCREMENT,
      email TEXT NOT NULL,
      senha TEXT NOT NULL)
      ''');

         await db.execute('''
      CREATE TABLE alarmeRemedios
      (id INTEGER PRIMARY KEY AUTOINCREMENT,
      horario TEXT NOT NULL,
      nome TEXT NOT NULL,
      quantidade INTEGER NOT NULL,
      estaAtivo INTEGER NOT NULL

      )
      ''');
  }

  Future<int> addUser(User newUser) async {
    Database db = await instance.database;
    return await db.insert('users', newUser.toMap());
  }
}
