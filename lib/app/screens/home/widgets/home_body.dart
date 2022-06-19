import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoo_app/app/screens/animal_details/details.dart';
import 'package:zoo_app/app/screens/home/home_controller.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = context.watch<HomeController>();
    if (!homeController.loanding) {
      return homeController.animals.isNotEmpty
          ? ListView.builder(
              itemCount: homeController.animals.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Hero(
                    tag: homeController.animals[index].id,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          Uri.parse(homeController.animals[index].imageLink)
                              .toString()),
                    ),
                  ),
                  title: Text(homeController.animals[index].name),
                  subtitle: Text(homeController.animals[index].animalType),
                  onTap: () {
                    Navigator.pushNamed(context, Details.route,
                        arguments: homeController.animals[index]);
                  },
                );
              },
            )
          : const Center(
              child: Text('Nehum animal encontrado'),
            );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
