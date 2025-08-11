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
      fullName: superhero.biography?.fullName,
      powerstats: _getPowerstats( superhero.powerstats ),
    )).toList(),
  );

  static SuperheroePowerstats _getPowerstats( Powerstats? powerstats ){
    return SuperheroePowerstats(
      combat: powerstats?.combat ?? "0",
      durability: powerstats?.durability ?? "0",
      intelligence: powerstats?.intelligence ?? "0",
      speed: powerstats?.speed ?? "0",
      power: powerstats?.power ?? "0",
      strength: powerstats?.strength ?? "0",
    );
  }

}