import 'package:disenios_app/domain/bloc/slide_bloc.dart';
import 'package:disenios_app/models/services/slide_service.dart';
import 'package:disenios_app/models/slide_item_model.dart';
import 'package:disenios_app/ui/utils/colores.dart';
import 'package:disenios_app/ui/widgets/dots_widget.dart';
import 'package:disenios_app/ui/widgets/slide_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisenioUnoPage extends StatefulWidget {
  DisenioUnoPage({Key? key}) : super(key: key);

  @override
  _DisenioUnoPageState createState() => _DisenioUnoPageState();
}

class _DisenioUnoPageState extends State<DisenioUnoPage> {
  final controlador = PageController();
  //int currentPage = 0;
  //late int currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //currentPage = 0;
    //SlideService.getSlides();
  }

  @override
  Widget build(BuildContext context) {
    final sildeBloc = Provider.of<SlideBloc>(context);
    final size = MediaQuery.of(context).size;
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
              controller: controlador,
              onPageChanged: (valor) {
                sildeBloc.currentPage = valor;
                setState(() {});
              },
              itemBuilder: (_, index) => SlideWidget(
                slide: sildeBloc.slides[index],
              ),
              itemCount: sildeBloc.slides.length,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DotsWidget(
            slides: sildeBloc.slides,
            currentPage: sildeBloc.currentPage,
          ),
          sildeBloc.currentPage != sildeBloc.slides.length - 1
              ? FloatingActionButton(
                  onPressed: () {
                    controlador.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
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
      ),
    );
  }
}
