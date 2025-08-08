import 'dart:convert';

import 'package:superhero_app/core/plugins/dotenv.dart';
import 'package:superhero_app/core/plugins/http.dart';
import 'package:superhero_app/data/entities/superhero.entity.dart';
import 'package:superhero_app/data/mappers/superhero_model_to_entity.mapper.dart';
import 'package:superhero_app/data/models/superhero_response.dart';


class SuperheroService {

  final _token = Env.getKey( EnvKeys.superheroapi );
  final _baseUrl = "https://superheroapi.com/api";

  Future<SuperheroEntity?> fetchSuperheroInfo( String name ) async {
    final url = "$_baseUrl/$_token/search/$name";
    final response = await Http.get( url );

    if( response.statusCode == 200 ){
      final decodedJson = jsonDecode(response.body );
      final SuperheroResponse superheroResponse = SuperheroResponse.fromJson( decodedJson );
      final superhero =  SuperheroModelToEntityMapper.createEntity(superheroResponse);
      return superhero;
    }

    return null;

  }
}