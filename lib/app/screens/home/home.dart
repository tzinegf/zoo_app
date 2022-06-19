import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoo_app/app/screens/home/home_controller.dart';
import 'package:zoo_app/app/screens/home/widgets/home_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final homeController = context.watch<HomeController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Buscar Animais'),
      ),
      body: const HomeBody(),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            height: 70,
            child: TextButton(
              onPressed: () {
                homeController.getAnimals();
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 20,
                )),
                minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('Buscar Animais'),
            ),
          ),
        ],
      ),
    );
  }
}
