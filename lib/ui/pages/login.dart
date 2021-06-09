import 'package:disenios_app/domain/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = Provider.of<LoginBloc>(context);
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
                'Iniciar sesión',
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
                hintText: 'Correo electrónico',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onChanged: (String valor) {
                print('Textfield: $valor');
                loginBloc.correo = valor;
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
                loginBloc.password = valor;
              },
            ),
            SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
              onPressed: loginBloc.permitir
                  ? () {
                      loginBloc.iniciaSesion(context);
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text('Login'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: Text('No tengo cuenta'),
            )
          ],
        ),
      ),
    );
  }
}
