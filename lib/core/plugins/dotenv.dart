import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Keys {
  superheroapi( key: "SUPERHEROAPI" );

  const Keys({ 
    required String key
  }) : _key = key;


  // PROPIEDADES
  final String _key;
  String get key => _key;
}

class EnvKeys{
   
  static Future<void> loadEnv() async => await dotenv.load(fileName: ".env");

  static String getKey( Keys key ) => dotenv.env[ key.name ] ?? "";
}