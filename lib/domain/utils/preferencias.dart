import 'package:shared_preferences/shared_preferences.dart';
//Crea un archivo codificado y es binario para almacenar 

class Preferencias {
  static final Preferencias _instancia = Preferencias._internal();

  factory Preferencias() {
    return _instancia;
  }

  Preferencias._internal();
  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //get y sets
  String get token {
    return _prefs.getString('token') ?? '';
  }

  set token(String valor) {
    _prefs.setString('token', valor);
  }

  // String get idioma {
  //   return _prefs.getString('idioma') ?? 'es';
  // }

  // set idioma(String valor) {
  //   _prefs.setString('idioma', valor);
  // }

  // bool get offline {
  //   return _prefs.getBool('offline') ?? false;
  // }

  // set offline(bool valor) {
  //   _prefs.setBool('offline', valor);
  // }

  // set empleado(Empleado? empleado) {
  //   if (empleado != null)
  //     _prefs.setString('empleado', jsonEncode(empleado.toJson()));
  //   else
  //     _prefs.setString('empleado', jsonEncode(''));
  // }

  // Empleado? get empleado {
  //   String usuarioString = _prefs.getString('empleado') ?? '';
  //   if (usuarioString.length > 0) {
  //     Map empleadoMap = jsonDecode(usuarioString);
  //     Empleado empleado =
  //         Empleado.fromJson(empleadoMap.cast<String, dynamic>());
  //     return empleado;
  //   } else
  //     return null;
  // }
}