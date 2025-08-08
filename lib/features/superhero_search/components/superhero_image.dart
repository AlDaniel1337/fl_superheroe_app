import 'package:flutter/material.dart';
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
            borderRadius: _borderRadius,
            color: const Color.fromARGB(255, 255, 188, 143)),
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
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Image.network(
        superheroData.imageUrl!,
        width: 150,
        height: 150,
        fit: BoxFit.cover,
        alignment: Alignment(0, -0.6),
        errorBuilder: (context, error, stackTrace) {
          return const Text("Sin imagen");
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Esta cargando la imagen"),
          );
        },
      ),
    );
  }
}
