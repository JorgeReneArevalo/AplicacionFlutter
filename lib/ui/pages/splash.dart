import 'package:disenios_app/domain/bloc/slide_bloc.dart';
import 'package:disenios_app/domain/utils/preferencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //final slideProvider=Provider.of<SlideBloc>(context, listen: false);
    Future.delayed(Duration(milliseconds: 800), () {
      Preferencias pref = Preferencias();
      String token = pref.token;
      if (token.length > 0) {
        print('Si tiene token');
        Navigator.pushReplacementNamed(context, 'home');
      } else {
        Navigator.pushReplacementNamed(context, 'uno');
        print('No tiene token');
      }
      //Navigator.pushReplacementNamed(context, 'uno');
    });
    Provider.of<SlideBloc>(context, listen: false).cargarSlides();
    //slideProvider.cargarSlides();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Diseños app',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
