import 'dart:convert';

import 'package:http/http.dart' as htttp;
import 'package:zoo_app/app/data/models/animal_model.dart';

class AnimalRepository {
  Future<List<AnimalModel>> getAnimals() async {
    Uri uri = Uri.parse('https://zoo-animal-api.herokuapp.com/animals/rand/10');

    htttp.Response response = await htttp.get(uri);

    if (response.statusCode == 200) {
      var jsonDecode = json.decode(response.body);
      List<AnimalModel> animals = jsonDecode
          .map<AnimalModel>((item) => AnimalModel.fromMap(item))
          .toList();
      return animals;
    } else {
      throw Exception('Erro ao carregar animais');
    }
  }
}