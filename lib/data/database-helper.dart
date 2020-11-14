import 'dart:io';
import 'package:flutter_app_database/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_app_database/models/user1.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  final String tableUser = "User";
  final String tableUser1 = "User1";
  final String columnName = "name";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnName1 = "name1";
  final String columnUserName1 = "username1";
  final String columnPassword1 = "password1";


  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT, flaglogged TEXT)");
    print("Table is created");
    await db.execute(
        "CREATE TABLE User1(id1 INTEGER PRIMARY KEY, name1 TEXT, username1 TEXT, password1 TEXT, flaglogged1 TEXT)");
    print("Table is created");

  }

  //insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }
  Future<User> selectUser(User user) async{
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username,user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    }else {
      return null;
    }
  }
  Future<int> saveUser1(User1 user1) async {
    var dbClient1 = await db;
    print(user1.name1);
    int res = await dbClient1.insert("User", user1.toMap());
    List<Map> list = await dbClient1.rawQuery('SELECT * FROM User1');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteUser1(User1 user1) async {
    var dbClient1 = await db;
    int res = await dbClient1.delete("User1");
    return res;
  }
  Future<User1> selectUser1(User1 user1) async{
    print("Select User1");
    print(user1.username1);
    print(user1.password1);
    var dbClient1 = await db;
    List<Map> maps = await dbClient1.query(tableUser1,
        columns: [columnUserName1, columnPassword1],
        where: "$columnUserName1 = ? and $columnPassword1 = ?",
        whereArgs: [user1.username1,user1.password1]);
    print(maps);
    if (maps.length > 0) {
      print("User1 Exist !!!");
      return user1;
    }else {
      return null;
    }
  }

}
