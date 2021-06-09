import 'package:disenios_app/models/services/usuario_service.dart';
import 'package:flutter/cupertino.dart';

class LoginBloc extends ChangeNotifier {
  String _correo = '';
  String _password = '';
  bool _permitir = false;

  String get corre => this._correo;
  String get password => this._password;
  bool get permitir => this._permitir;


  set correo(String correo) {
    this._correo = correo;
    if (this._password.length > 0) {
      if (this._correo.length > 0) {
        this._permitir = true;
      } else {
        this._permitir = false;
      }
    } else {
      this._permitir = false;
    }
    notifyListeners();
  }

  set password(String password) {
    this._password = password;
    if (this._password.length > 0) {
      if (this._correo.length > 0) {
        this._permitir = true;
      } else {
        this._permitir = false;
      }
    } else {
      this._permitir = false;
    }
    notifyListeners();
  }

  set permitir(bool permitir) {
    this._permitir = permitir;
    notifyListeners();
  }


  //Metodos propios
  void iniciaSesion(BuildContext context) async {
    print(this._correo);
    print(this._password);
    await UsuarioService.login(context, this._correo, this._password);
  }
}
