import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvKeys {
  superheroapi( envKey: "SUPERHEROAPI" );

  const EnvKeys({ 
    required String envKey
  }) : _envKey = envKey;


  // PROPIEDADES
  final String _envKey;
  String get envKey => _envKey;
}

class Env{
   
  static Future<void> loadEnv() async => await dotenv.load(fileName: ".env");

  static String getKey( EnvKeys key ) => dotenv.env[ key.envKey ] ?? "";
}