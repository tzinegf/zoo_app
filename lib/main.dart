import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoo_app/app/routes/routes.dart';
import 'package:zoo_app/app/screens/home/home.dart';
import 'package:zoo_app/app/screens/home/home_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animais do Zoo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generareRoute,
      initialRoute: Home.route,
    );
  }
}
