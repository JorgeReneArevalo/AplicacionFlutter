import 'dart:io';
import 'package:disenios_app/domain/bloc/slide_bloc.dart';
import 'package:disenios_app/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FotoCapturadaWidget extends StatefulWidget {
  final String imagePath;

  FotoCapturadaWidget({required this.imagePath});

  @override
  _FotoCapturadaWidgetState createState() => _FotoCapturadaWidgetState();
}

class _FotoCapturadaWidgetState extends State<FotoCapturadaWidget> {
  bool _cargando = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Image.file(File(widget.imagePath), fit: BoxFit.cover)),
            SizedBox(height: 10.0),
            Padding(
              child: ElevatedButton(
                  child: Text(
                    (_cargando) ? 'Guardando fotografia...' : 'Aceptar',
                  ),
                  onPressed: () async {
                    setState(() {
                      _cargando = true;
                    });
                    //Provider.of<DetalleBloc>(context, listen: false).foto =
                    //  widget.imagePath;
                    final bloc = Provider.of<SlideBloc>(context, listen: false);
                    CardModel tarjeta = CardModel(
                        id: DateTime.now().microsecond,
                        imagen: widget.imagePath);
                    bloc.addCard(tarjeta);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }),
              padding: EdgeInsets.all(12.0),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: OutlinedButton(
                  child: Text(
                    'Cancelar',
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
