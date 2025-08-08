import 'package:superhero_app/data/entities/superhero.entity.dart';
import 'package:superhero_app/data/models/superhero_response.dart';

class SuperheroModelToEntityMapper {

  static SuperheroEntity createEntity( SuperheroResponse superheroResponse ) => 
  SuperheroEntity(
    response: superheroResponse.response ?? "No hay resultados", 
    resultsFor: superheroResponse.resultsFor ?? "no-data",
    result: superheroResponse.results?.map( (superhero) => SuperheroDetailsEntity( 
      id: superhero.id,
      name: superhero.name,
      imageUrl: superhero.image?.url,
    )).toList(),
  );

}