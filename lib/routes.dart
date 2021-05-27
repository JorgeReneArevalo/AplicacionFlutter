import 'package:disenios_app/ui/pages/disenio_uno.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> rutas() {
  return <String, WidgetBuilder>{
    'uno': (_) => DisenioUnoPage(),
    // 'background-color': (BuildContext context) => BackgroundPage(),
    // 'botones-page': (BuildContext context) => BotonesPage(),
    // 'menu': (BuildContext context) => MenuPage(),
  };
}
