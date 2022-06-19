import 'package:flutter/cupertino.dart';
import 'package:zoo_app/app/data/models/animal_model.dart';
import 'package:zoo_app/app/data/services/animal_repository.dart';

class HomeController with ChangeNotifier {
  final AnimalRepository _animalRepository = AnimalRepository();

  List<AnimalModel> animals = [];

  Future<void> getAnimals() async {
    setLoanding(true);
    animals = await _animalRepository.getAnimals();
    notifyListeners();
    setLoanding(false);
  }

  bool loanding = false;
  setLoanding(bool value) {
    loanding = value;
    notifyListeners();
  }
}
