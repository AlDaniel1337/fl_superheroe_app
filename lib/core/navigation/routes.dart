import 'package:get/get.dart';
import 'package:superhero_app/features/superhero_search/ui/superhero_search.page.dart';

class Routes{

  // Ruta principal
  static const String home = SuperheroSearchPage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: SuperheroSearchPage.route,         page:() => const SuperheroSearchPage()),
    ];
    
    return pages;
  } 
}