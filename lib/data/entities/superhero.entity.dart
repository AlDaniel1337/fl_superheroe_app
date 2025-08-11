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
  final String? fullName;
  final SuperheroePowerstats? powerstats;

  SuperheroDetailsEntity({
    this.id,
    this.name,
    this.imageUrl,
    this.fullName,
    this.powerstats,
  });
}



class SuperheroePowerstats {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

    SuperheroePowerstats({
      this.intelligence = "0",
      this.strength = "0",
      this.speed = "0",
      this.durability = "0",
      this.power = "0",
      this.combat = "0",
    });
}