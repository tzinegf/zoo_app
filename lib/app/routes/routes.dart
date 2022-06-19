import 'package:flutter/material.dart';
import 'package:zoo_app/app/screens/animal_details/details.dart';
import 'package:zoo_app/app/screens/home/home.dart';

class Routes {
  static Route<dynamic> generareRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.route:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case Details.route:
        return MaterialPageRoute(
          builder: (_) => const Details(),
          settings: settings,
        );
      default:
        throw const FormatException('Rota não encontrada');
    }
  }
}
