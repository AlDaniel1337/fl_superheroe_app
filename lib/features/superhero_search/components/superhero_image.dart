import 'package:flutter/material.dart';
import 'package:superhero_app/core/assets/assets.dart';
import 'package:superhero_app/data/entities/superhero.entity.dart';

final _borderRadius = BorderRadius.circular(16);

class SuperheroImage extends StatelessWidget {
  final SuperheroDetailsEntity superheroData;

  const SuperheroImage({super.key, required this.superheroData});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: _borderRadius
        ),
        child: Column(
          children: [
            if (superheroData.imageUrl != null)
            _Image(superheroData: superheroData),
            Text(superheroData.name ?? "no-name"),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.superheroData,
  });

  final SuperheroDetailsEntity superheroData;

  @override
  Widget build(BuildContext context) {

    double imageSize = 250;

    return ClipRRect(
      borderRadius: _borderRadius,
      child: Image.network(
        superheroData.imageUrl!,

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
