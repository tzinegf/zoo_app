# zoo_app Flutter App


Aplicativo desenvolvido em Flutter para consulta de animais de um zoologico utilizando a API [Zoo Animal API](https://zoo-animal-api.herokuapp.com/) 
## Author

**Edson Gomes** 

* *Meu perfil profissional no* [LinkedIn][https://www.linkedin.com/in/edson-gomes-b5b3a175/]


### Estrutura do projeto:

<pre> 
-main.dart
--app
------data
---------models
------------animal_model.dart
---------services
------------animal_repository.dart
---------services
------------pokemon_service.dart
------screens
---------animals_details
------------widgets
----------------details_body.dart
----------------list_tile_animal_data.dart
------------details_controller.dart
------------details.dart
---------home
------------widgets
----------------home_body.dart
------------home_controller.dart
------------home.dart
---------routes
------------routes.dart
---------shared
------------app_colors.dart
------------app_text_styles.dart


 
</pre>
##  Bibliotecas de terceiros:
 
 <pre>
    http: ^0.13.4
    provider: ^6.0.3
 </pre>
 


> Funcionalidades do App
* Com o app é possível buscar por por 10 animais aleatorios clicando no botão inferior da tela home, e ao clicar em determinado animal é exibido os detalhes do mesmo.


## Tecnologias utilizadas

Para este projeto foram utilizados as seguintes tecnologias:

* Dart[https://dart.dev/]
* Flutter[https://flutter.dev/]
* Provider[https://pub.dev/packages/provider]
