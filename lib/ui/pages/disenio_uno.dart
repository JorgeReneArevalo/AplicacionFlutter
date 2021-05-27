import 'package:disenios_app/models/slide_item_model.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:disenios_app/ui/widgets/dots_widget.dart';
import 'package:disenios_app/ui/widgets/slide_widget.dart';
import 'package:flutter/material.dart';

class DisenioUnoPage extends StatefulWidget {
  DisenioUnoPage({Key? key}) : super(key: key);

  @override
  _DisenioUnoPageState createState() => _DisenioUnoPageState();
}

class _DisenioUnoPageState extends State<DisenioUnoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: DisenioUnoColores.colorCuatro,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              //color: Colors.blue,
              child: PageView(
                children: [
                  SlideWidget(
                    slide: slides[0],
                  ),
                  SlideWidget(
                    slide: slides[1],
                  ),
                  SlideWidget(
                    slide: slides[2],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DotsWidget(
              currentPage: 0,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: DisenioUnoColores.colorUno,
              child: Icon(
                Icons.chevron_right,
                size: 40,
              ),
            ),
          ],
        ));
  }
}

