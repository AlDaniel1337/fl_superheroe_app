import 'package:flutter/material.dart';
import 'package:superhero_app/data/entities/superhero.entity.dart';
import 'dart:math' as math;


class SuperheroStats extends StatelessWidget {

  final SuperheroDetailsEntity superhero;
   
  const SuperheroStats({
    super.key, 
    required this.superhero,
  });
  
  @override
  Widget build(BuildContext context) {

    final Map<String, String> superheroStats = {
      "Power":        superhero.powerstats?.power ?? '0',
      "Strength":     superhero.powerstats?.strength ?? '0',
      "Intelligence": superhero.powerstats?.intelligence ?? '0',
      "Durability":   superhero.powerstats?.durability ?? '0',
      "Combat":       superhero.powerstats?.combat ?? '0',
      "Speed":        superhero.powerstats?.speed ?? '0',
    };

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (var element in superheroStats.entries)
        ...[
          Column(
            children: [

              Container(
                width: 20,
                height: double.tryParse( element.value ),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withAlpha(255)
              ),

              Text(element.key)

            ],
          )
        ]

      ] 
    );
        
  }
}