import 'package:http/http.dart' as http;

class Http {
  
  static Future< http.Response > get( String url ) async {
    var superheroUrl = Uri.parse(url);
    var response = await http.get(superheroUrl);
    return response;
  }
  
}