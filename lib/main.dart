import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/core/navigation/routes.dart';
import 'package:superhero_app/core/plugins/dotenv.dart';

void main() async {

  await Env.loadEnv();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Superhero App',

    // Rutas
    initialRoute: Routes.home,
    getPages: Routes.getRoutes(),
    navigatorKey: Get.key,
);
  }
}