import 'package:disenios_app/domain/bloc/login_bloc.dart';
import 'package:disenios_app/domain/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerBloc = Provider.of<RegisterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Lottie.asset("assets/disenio_uno/done_animation.json"),
            Center(
              child: Text(
                'Registar Cuenta',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.black.withOpacity(.7),
                    ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nombre',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onChanged: (String valor) {
                print('Textfield: $valor');
                registerBloc.nombre = valor;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Correo electrónico',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onChanged: (String valor) {
                print('Textfield: $valor');
                registerBloc.correo = valor;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onChanged: (String valor) {
                print('Textfield 2: $valor');
                registerBloc.password = valor;
              },
            ),
            SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
              onPressed: registerBloc.permitir
                  ? () {
                      registerBloc.registro(context);
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text('Registar'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ya tengo cuenta'),
            )
          ],
        ),
      ),
    );
  }
}
