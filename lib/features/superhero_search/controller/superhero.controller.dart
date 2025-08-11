

import 'package:get/get.dart';
import 'package:superhero_app/core/navigation/routes.dart';
import 'package:superhero_app/data/entities/superhero.entity.dart';
import 'package:superhero_app/features/superhero_search/ui/superhero_details.page.dart';
import 'package:superhero_app/services/superhero.service.dart';

/// SuperheroController _superheroController = Get.put(SuperheroController());
/// SuperheroController superheroController = Get.put(SuperheroController());

class SuperheroController extends GetxController{
  
  final SuperheroService _superheroService = SuperheroService();

  final _superheroData = SuperheroEntity().obs;
  SuperheroEntity get superheroData => _superheroData.value;

  SuperheroDetailsEntity? _superheroDataDetails;
  SuperheroDetailsEntity? get superheroDataDetails => _superheroDataDetails;

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;


  getSuperheroInfo( String name ) async {

    _isLoading.value = true;

    final data = await _superheroService.fetchSuperheroInfo(name);

    if(data == null ){
      _isLoading.value = false;
      return;
    }

    _superheroData.value = data;
    _isLoading.value = false;
  }

  void goToDetails(SuperheroDetailsEntity superheroDetailsEntity) {
    _superheroDataDetails = superheroDetailsEntity;
    Routes.goToPage(page: SuperheroDetailsPage.route );
  }

}