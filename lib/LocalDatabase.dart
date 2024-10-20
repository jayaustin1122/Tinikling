import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Localdatabase {
  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initializedDB('Local.db');
    return _database;
  }

  Future<Database> _initializedDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    // Create Media table for both images and videos
    await db.execute('''
      CREATE TABLE Media(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT,
        filePath TEXT NOT NULL
      )
    ''');

    // Create History table
    await db.execute('''
      CREATE TABLE History(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        imagesList TEXT NOT NULL,
        title TEXT NOT NULL,
        description TEXT,
        category TEXT NOT NULL
      )
    ''');

    // Create User table
    await db.execute('''
      CREATE TABLE User(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fullName TEXT NOT NULL,
        education TEXT NOT NULL,
        age INTEGER NOT NULL,
        email TEXT NOT NULL UNIQUE,
        phoneNumber TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');
  }

  // Insert into Media table (for images or videos)
  Future<void> insertMedia(
      String title, String description, String filePath) async {
    final db = await database;
    await db?.insert(
      'Media',
      {
        'title': title,
        'description': description,
        'filePath': filePath,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Read all media (images/videos)
  Future<List<Map<String, dynamic>>> readMedia() async {
    final db = await database;
    return await db?.query('Media') ?? [];
  }

  // Insert into History table
  Future<void> insertHistory(String imagesList, String title,
      String description, String category) async {
    final db = await database;
    await db?.insert(
      'History',
      {
        'imagesList': imagesList,
        'title': title,
        'description': description,
        'category': category,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Read all history
  Future<List<Map<String, dynamic>>> readHistory() async {
    final db = await database;
    return await db?.query('History') ?? [];
  }

  // Insert user into the User table
  Future<void> insertUser(String fullName, String education, int age,
      String email, String phoneNumber, String password) async {
    final db = await database;
    try {
      await db?.insert(
        'User',
        {
          'fullName': fullName,
          'education': education,
          'age': age,
          'email': email,
          'phoneNumber': phoneNumber,
          'password': password,
        },
        conflictAlgorithm: ConflictAlgorithm.replace, // Adjust this as needed
      );
      print('User inserted successfully');
    } catch (e) {
      print('Error inserting user: $e');
    }
  }

  // Read all users
  Future<List<Map<String, dynamic>>> readUsers() async {
    final db = await database;
    return await db?.query('User') ?? [];
  }

  // Find a user by email and password (login)
  Future<Map<String, dynamic>?> findUser(String email, String password) async {
    final db = await database;
    final List<Map<String, dynamic>> result = await db!.query(
      'User',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null; // Return null if user is not found
    }
  }
}
