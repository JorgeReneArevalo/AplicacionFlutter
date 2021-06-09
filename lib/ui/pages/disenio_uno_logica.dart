
import 'package:disenios_app/models/slide_item_model.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:disenios_app/ui/widgets/dots_widget.dart';
import 'package:disenios_app/ui/widgets/slide_widget.dart';
import 'package:flutter/material.dart';

class DisenioUnoPageLogica extends StatefulWidget {
  DisenioUnoPageLogica({Key? key}) : super(key: key);

  @override
  _DisenioUnoPageLogica createState() => _DisenioUnoPageLogica();
}

class _DisenioUnoPageLogica extends State<DisenioUnoPageLogica> {
  int currentPage = 0;
  //late in currentPage;

  //@override
  //Void iniState(){
  // currentPage = 0;
  // super.iniState();
  //}
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    //return SafeArea(
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
              //height: 600,
              height: size.height * 0.7,
              //color: Colors.blue,
              child: PageView.builder(
                onPageChanged: (valor) {
                  currentPage = valor;
                  //setState(() {});
                },
                itemBuilder: (_, index) => SlideWidget(
                  slide: paginas[index],
                ),
                itemCount: paginas.length,
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DotsWidget(
              //slides: paginas,
              //currentPage: currentPage,
            ),
            currentPage != paginas.length - 1
                ? FloatingActionButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
    //);
  }
}
