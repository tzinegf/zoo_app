import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoo_app/app/data/models/animal_model.dart';
import 'package:zoo_app/app/screens/animal_details/details_controller.dart';
import 'package:zoo_app/app/screens/animal_details/widgets/list_tile_animal_data.dart';
import 'package:zoo_app/app/shared/app_colors.dart';
import 'package:zoo_app/app/shared/app_text_styles.dart';

class DetailsBody extends StatelessWidget {
  DetailsBody({Key? key, required this.animal}) : super(key: key);
  AnimalModel? animal;

  @override
  Widget build(BuildContext context) {
    final datailsController = context.watch<DetailsController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do animal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: animal!.id,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(animal!.imageLink),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.ligthColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(animal!.name, style: AppTextStyles.titleTextStyle),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ListTileAnimalData(
                          title: 'Tamanho ',
                          data:
                              '${datailsController.convertPesToMeters(animal!.lengthMin)} a ${datailsController.convertPesToMeters(animal!.lengthMax)} metros',
                        ),
                        ListTileAnimalData(
                          title: 'Peso',
                          data:
                              '${datailsController.convertLibrasToKilograms(animal!.weightMin)} a ${datailsController.convertLibrasToKilograms(animal!.weightMax)} Kg',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ListTileAnimalData(
                          title: 'Horario de atividade',
                          data: animal!.activeTime == 'Diurnal'
                              ? 'Diurno'
                              : 'Noturno',
                        ),
                        ListTileAnimalData(
                          title: 'Tempo de vida',
                          data: '${animal!.lifespan} anos',
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Divider(),
              ListTileAnimalData(
                data: animal!.latinName,
                title: 'Nome científico',
              ),
              const Divider(),
              ListTileAnimalData(
                data: animal!.animalType,
                title: 'Tipo de animal',
              ),
              const Divider(),
              ListTileAnimalData(
                data: animal!.habitat,
                title: 'Hábitat',
              ),
              const Divider(),
              ListTileAnimalData(
                data: animal!.diet,
                title: 'Dieta',
              ),
              const Divider(),
              ListTileAnimalData(
                data: animal!.geoRange,
                title: 'Alcance geográfico',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
