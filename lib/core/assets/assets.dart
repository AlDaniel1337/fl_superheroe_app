import 'package:flutter/widgets.dart';

enum Assets {

  notFound ( url: "./assets/404.png" ); 

  const Assets({ 
    required String url 
  }) : _url = url;

  final String _url;
  AssetImage get image => AssetImage( _url );
}