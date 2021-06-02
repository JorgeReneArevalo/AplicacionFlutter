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

int currentPage = 0;

class _DisenioUnoPageState extends State<DisenioUnoPage> {
  final controlador = PageController();
  //late in currentPage;

  //@override
  //Void iniState(){
  // currentPage = 0;
  // super.iniState();
  // SlideService.getSlides();
  //}
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
              child: PageView.builder(
                controller: controlador,
                onPageChanged: (valor) {
                  currentPage = valor;
                  setState(() {});
                },
                itemBuilder: (_, index) => SlideWidget(
                  slide: slides[index],
                ),
                itemCount: slides.length,
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DotsWidget(
              currentPage: currentPage,
            ),
            currentPage != slides.length - 1
                ? FloatingActionButton(
                    onPressed: () {
                      controlador.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                    backgroundColor: DisenioUnoColores.colorUno,
                    child: Icon(
                      Icons.chevron_right,
                      size: 40,
                    ),
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: DisenioUnoColores.colorUno,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 5,
                      ),
                      child: Text(
                        'Ge Start',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
          ],
        ));
  }
}
