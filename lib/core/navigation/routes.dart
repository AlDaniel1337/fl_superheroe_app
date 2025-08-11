import 'package:get/get.dart';
import 'package:superhero_app/features/superhero_search/ui/superhero_details.page.dart';
import 'package:superhero_app/features/superhero_search/ui/superhero_search.page.dart';

class Routes{

  static const String home = SuperheroSearchPage.route;
  
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: SuperheroSearchPage.route,  page:() => const SuperheroSearchPage()),
      GetPage(name: SuperheroDetailsPage.route, page:() => const SuperheroDetailsPage()),
    ];
    
    return pages;
  } 

  static goToPage({required String page}) => Get.toNamed(page);
}