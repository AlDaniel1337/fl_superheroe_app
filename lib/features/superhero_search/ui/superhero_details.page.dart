import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/core/assets/assets.dart';
import 'package:superhero_app/data/entities/superhero.entity.dart';
import 'package:superhero_app/features/superhero_search/components/superhero_stats.dart';
import 'package:superhero_app/features/superhero_search/controller/superhero.controller.dart';

final SuperheroController _superheroController = Get.put(SuperheroController());

class SuperheroDetailsPage extends StatelessWidget {

  static const String route = "/SuperheroDetailsPage";
   
  const SuperheroDetailsPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    SuperheroDetailsEntity? superheroDataDetails = _superheroController.superheroDataDetails;
    double imageSize = 250;

    return Scaffold(
   
      appBar: AppBar(
        title: Text(superheroDataDetails?.name ?? "no-name"),
        centerTitle: true,
      ),
   
      body: Center(
        child: Column(
          children: [
            _Image(superheroDataDetails: superheroDataDetails, imageSize: imageSize),

            Text( superheroDataDetails?.name ?? "", style: TextStyle( fontSize: 36, fontWeight: FontWeight.bold ),),
            Text( superheroDataDetails?.fullName ?? ""),

            if( superheroDataDetails != null )
            SuperheroStats(superhero: superheroDataDetails )
          ],
        )
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.superheroDataDetails,
    required this.imageSize,
  });

  final SuperheroDetailsEntity? superheroDataDetails;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        superheroDataDetails!.imageUrl!,
    
        width: imageSize,
        height: imageSize,
        fit: BoxFit.cover,
        alignment: Alignment(0, -0.6),
    
        errorBuilder: (context, error, stackTrace) {
          return Image( 
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
            image: Assets.notFound.image 
          );
        },
    
        loadingBuilder: (context, child, loadingProgress) {
    
          if (loadingProgress == null) return child;
          
          return Container(
            width: imageSize,
            height: imageSize,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Esta cargando la imagen"),
          );
        },
      ),
    );
  }
}