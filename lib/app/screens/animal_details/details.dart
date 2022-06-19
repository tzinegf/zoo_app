import 'package:flutter/material.dart';
import 'package:zoo_app/app/data/models/animal_model.dart';
import 'package:zoo_app/app/screens/animal_details/widgets/details_body.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  static const String route = '/animal_details';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as AnimalModel;

    return DetailsBody(
      animal: args,
    );
  }
}
