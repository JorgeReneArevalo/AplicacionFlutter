import 'package:disenios_app/models/slide_item_model.dart';
import 'package:flutter/cupertino.dart';

class SlideBloc extends ChangeNotifier {
  int _currentPage = 0;
  List<SlideItemModel> _slides = [];
  int get currentPage => this._currentPage;
  set currentPage(int valor) {
    this.currentPage = valor;
    notifyListeners();
  }

  List<SlideItemModel> get slides => this._slides;

  set slides(List<SlideItemModel> lista) {
    this._slides = lista;
    notifyListeners();
  }
}
