import 'package:disenios_app/models/slide_item_model.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;
  List<Widget> dibujarPuntos() {
    return slides
        .map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              width: e.index == currentPage ? 15 : 15,
              height: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(.4)),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          //color: Colors.red,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dibujarPuntos(),
          ),
        ),
      ],
    );
  }
}
