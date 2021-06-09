import 'package:disenios_app/domain/bloc/slide_bloc.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    Key? key,
    //required this.currentPage,
    //required this.slides,
  }) : super(key: key);

  //final int currentPage;
  //final List<SlideItemModel> slides;
  List<Widget> dibujarPuntos(SlideBloc bloc) {
   
    return bloc.slides
        .map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: e.id == (bloc.currentPage+1) ? 45 : 15,
              height: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  //color: Colors.grey.withOpacity(.4),
                  color: e.id == bloc.currentPage ? DisenioUnoColores.colorTres : Colors.grey.withOpacity(.4)
                  ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
     final slideBloc = Provider.of<SlideBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          //color: Colors.red,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dibujarPuntos(slideBloc),
          ),
        ),
      ],
    );
  }
}
