class SuperheroEntity {
  final String? response;
  final String? resultsFor;
  final List<SuperheroDetailsEntity>? result;

  SuperheroEntity({
    this.response,
    this.resultsFor,
    this.result,
  });
}



class SuperheroDetailsEntity {
  final String? id;
  final String? name;
  final String? imageUrl;

  SuperheroDetailsEntity({
    this.id,
    this.name,
    this.imageUrl,
  });
}