import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superhero_app/features/superhero_search/components/superhero_image.dart';
import 'package:superhero_app/features/superhero_search/controller/superhero.controller.dart';

class SuperheroHub extends StatelessWidget {
   
  const SuperheroHub({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {

    SuperheroController superheroController = Get.put(SuperheroController());

    return Obx( (){

      if ( superheroController.isLoading ){
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          )
        );
      }
      
      return Expanded(
        child: ListView.builder(
          itemCount: superheroController.superheroData.result?.length ?? 0,
          itemBuilder: (context, index){
        
            final superheroData = superheroController.superheroData.result?[index];
        
            return SuperheroImage( superheroData: superheroData!, );
          }
        ),
      );
    });
  }
}