import 'package:disenios_app/models/services/usuario_service.dart';
import 'package:flutter/cupertino.dart';

class RegisterBloc extends ChangeNotifier {
  String _correo = '';
  String _password = '';
  String _nombre = '';
  bool _permitir = false;

  String get corre => this._correo;
  String get password => this._password;
  bool get permitir => this._permitir;

  String get nombre => this._nombre;

  set correo(String correo) {
    this._correo = correo;
    if (this._password.length > 0) {
      if (this._correo.length > 0) {
        if (this._nombre.length > 0) {
          this._permitir = true;
        } else {
          this._permitir = false;
        }
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
        if (this._nombre.length > 0) {
          this._permitir = true;
        } else {
          this._permitir = false;
        }
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

  set nombre(String nombre) {
    this._nombre = nombre;
    if (this._password.length > 0) {
      if (this._correo.length > 0) {
        if (this._nombre.length > 0) {
          this._permitir = true;
        } else {
          this._permitir = false;
        }
      } else {
        this._permitir = false;
      }
    } else {
      this._permitir = false;
    }
    notifyListeners();
  }

  //Metodos propios
  void registro(BuildContext context) async {
    print(this._correo);
    print(this._password);
    print(this._nombre);
    await UsuarioService.register(context, this._correo, this._password, this._nombre);
  }
}
