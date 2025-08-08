// To parse this JSON data, do
//
// final superheroResponse = superheroResponseFromJson(jsonString);

import 'dart:convert';

SuperheroResponse superheroResponseFromJson(String str) => SuperheroResponse.fromJson(json.decode(str));

String superheroResponseToJson(SuperheroResponse data) => json.encode(data.toJson());

class SuperheroResponse {
    final String? response;
    final String? resultsFor;
    final List<Result>? results;

    SuperheroResponse({
        this.response,
        this.resultsFor,
        this.results,
    });

    factory SuperheroResponse.fromJson(Map<String, dynamic> json) => SuperheroResponse(
        response: json["response"],
        resultsFor: json["results-for"],
        results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "response": response,
        "results-for": resultsFor,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
    };
}

class Result {
    final String? id;
    final String? name;
    final Powerstats? powerstats;
    final Biography? biography;
    final Appearance? appearance;
    final Work? work;
    final Connections? connections;
    final Image? image;

    Result({
        this.id,
        this.name,
        this.powerstats,
        this.biography,
        this.appearance,
        this.work,
        this.connections,
        this.image,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        powerstats: json["powerstats"] == null ? null : Powerstats.fromJson(json["powerstats"]),
        biography: json["biography"] == null ? null : Biography.fromJson(json["biography"]),
        appearance: json["appearance"] == null ? null : Appearance.fromJson(json["appearance"]),
        work: json["work"] == null ? null : Work.fromJson(json["work"]),
        connections: json["connections"] == null ? null : Connections.fromJson(json["connections"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "powerstats": powerstats?.toJson(),
        "biography": biography?.toJson(),
        "appearance": appearance?.toJson(),
        "work": work?.toJson(),
        "connections": connections?.toJson(),
        "image": image?.toJson(),
    };
}

class Appearance {
    final String? gender;
    final String? race;
    final List<String>? height;
    final List<String>? weight;
    final String? eyeColor;
    final String? hairColor;

    Appearance({
        this.gender,
        this.race,
        this.height,
        this.weight,
        this.eyeColor,
        this.hairColor,
    });

    factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: json["gender"],
        race: json["race"],
        height: json["height"] == null ? [] : List<String>.from(json["height"]!.map((x) => x)),
        weight: json["weight"] == null ? [] : List<String>.from(json["weight"]!.map((x) => x)),
        eyeColor: json["eye-color"],
        hairColor: json["hair-color"],
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "race": race,
        "height": height == null ? [] : List<dynamic>.from(height!.map((x) => x)),
        "weight": weight == null ? [] : List<dynamic>.from(weight!.map((x) => x)),
        "eye-color": eyeColor,
        "hair-color": hairColor,
    };
}

class Biography {
    final String? fullName;
    final String? alterEgos;
    final List<String>? aliases;
    final String? placeOfBirth;
    final String? firstAppearance;
    final String? publisher;
    final String? alignment;

    Biography({
        this.fullName,
        this.alterEgos,
        this.aliases,
        this.placeOfBirth,
        this.firstAppearance,
        this.publisher,
        this.alignment,
    });

    factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["full-name"],
        alterEgos: json["alter-egos"],
        aliases: json["aliases"] == null ? [] : List<String>.from(json["aliases"]!.map((x) => x)),
        placeOfBirth: json["place-of-birth"],
        firstAppearance: json["first-appearance"],
        publisher: json["publisher"],
        alignment: json["alignment"],
    );

    Map<String, dynamic> toJson() => {
        "full-name": fullName,
        "alter-egos": alterEgos,
        "aliases": aliases == null ? [] : List<dynamic>.from(aliases!.map((x) => x)),
        "place-of-birth": placeOfBirth,
        "first-appearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignment,
    };
}

class Connections {
    final String? groupAffiliation;
    final String? relatives;

    Connections({
        this.groupAffiliation,
        this.relatives,
    });

    factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation: json["group-affiliation"],
        relatives: json["relatives"],
    );

    Map<String, dynamic> toJson() => {
        "group-affiliation": groupAffiliation,
        "relatives": relatives,
    };
}

class Image {
    final String? url;

    Image({
        this.url,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class Powerstats {
    final String? intelligence;
    final String? strength;
    final String? speed;
    final String? durability;
    final String? power;
    final String? combat;

    Powerstats({
        this.intelligence,
        this.strength,
        this.speed,
        this.durability,
        this.power,
        this.combat,
    });

    factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
    );

    Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
    };
}

class Work {
    final String? occupation;
    final String? base;

    Work({
        this.occupation,
        this.base,
    });

    factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"],
        base: json["base"],
    );

    Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
    };
}
