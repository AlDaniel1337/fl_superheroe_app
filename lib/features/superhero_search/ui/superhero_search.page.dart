import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/features/superhero_search/components/superhero_hub.dart';
import 'package:superhero_app/features/superhero_search/controller/superhero.controller.dart';

class SuperheroSearchPage extends StatelessWidget {

  static const String route = "/SuperheroSearchPage";
   
  const SuperheroSearchPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    SuperheroController superheroController = Get.put(SuperheroController());

    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Buscar'),
        centerTitle: true,
      ),
   
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric( horizontal:  8 ),
              child: TextField(
                onSubmitted: (value) => superheroController.getSuperheroInfo( value ),
                decoration: InputDecoration(
                  hintText: "Buscar un superhéroe",
                  prefixIcon: Icon( Icons.search ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SuperheroHub()
          ],
        ),
      ),
    );
  }
}