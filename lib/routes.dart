import 'package:disenios_app/ui/pages/disenio_uno.dart';
import 'package:disenios_app/ui/pages/home.dart';
import 'package:disenios_app/ui/pages/login.dart';
import 'package:disenios_app/ui/pages/register.dart';
import 'package:disenios_app/ui/pages/splash.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> rutas() {
  return <String, WidgetBuilder>{
    '/': (_) => SplashPage(),
    'uno': (_) => DisenioUnoPage(),
    'login': (_) => LoginPage(),
    'register': (_) => RegisterPage(),
    'home':(_)=> HomePage(),
    // 'background-color': (BuildContext context) => BackgroundPage(),
    // 'botones-page': (BuildContext context) => BotonesPage(),
    // 'menu': (BuildContext context) => MenuPage(),
  };
}
