import 'package:disenios_app/models/slide_item_model.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:flutter/material.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({
    Key? key,
    required this.slide,
  }) : super(key: key);

  final SlideItemModel slide;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   child: Image.asset(
        //     'assets/disenio_uno/undraw_version_control_re_mg66.png',
        //     height: 400,
        //   ),
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              slide.imagen,
              //'assets/disenio_uno/undraw_version_control_re_mg66.png',
              //fit: BoxFit.fitHeight,
              //height: 400,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              //'Frase de la imagen uno',
              slide.titulo,
              style: TextStyle(
                  color: DisenioUnoColores.colorCuatro,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
