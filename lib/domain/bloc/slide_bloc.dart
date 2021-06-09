import 'package:disenios_app/models/services/slide_service.dart';
import 'package:disenios_app/models/slide_item_model.dart';
import 'package:flutter/cupertino.dart';

class SlideBloc extends ChangeNotifier {
  int _currentPage = 0;
  List<SlideItemModel> _slides = [];
  bool _cargando = false;
  PageController _controlador = PageController();
  int get currentPage => this._currentPage;
  bool get cargando => this._cargando;
  PageController get controlador => this._controlador;
  set currentPage(int valor) {
    this._currentPage = valor;
    notifyListeners();
  }

  List<SlideItemModel> get slides => this._slides;

  set slides(List<SlideItemModel> lista) {
    this._slides = lista;
    notifyListeners();
  }

  void cargarSlides() async {
    this._cargando = true;
    //notifyListeners();
    this._slides = await SlideService.getSlides()!;
    this._cargando = false;
    notifyListeners();
  }
}
