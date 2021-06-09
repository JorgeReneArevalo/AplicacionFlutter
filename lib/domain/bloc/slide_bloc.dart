import 'package:disenios_app/models/card_model.dart';
import 'package:disenios_app/models/services/slide_service.dart';
import 'package:disenios_app/models/slide_item_model.dart';
import 'package:flutter/cupertino.dart';

class SlideBloc extends ChangeNotifier {
  int _currentPage = 0;
  List<SlideItemModel> _slides = [];
  bool _cargando = false;
  PageController _controlador = PageController();

  List<CardModel> _tarjetas = [
    CardModel(
        id: 0,
        imagen:
            'https://i.pinimg.com/736x/16/cc/37/16cc376e6a132210f01576b927e9c661.jpg'),
    CardModel(
        id: 1,
        imagen:
            'https://p4.wallpaperbetter.com/wallpaper/140/255/582/night-tokyo-japan-city-2560%C3%971600-wallpaper-preview.jpg'),
    CardModel(
        id: 2,
        imagen:
            'https://i.pinimg.com/736x/16/cc/37/16cc376e6a132210f01576b927e9c661.jpg'),
  ];

  int get currentPage => this._currentPage;
  bool get cargando => this._cargando;
  PageController get controlador => this._controlador;

  List<SlideItemModel> get slides => this._slides;
  List<CardModel> get tarjetas => this._tarjetas;

  set currentPage(int valor) {
    this._currentPage = valor;
    notifyListeners();
  }

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

  void addCard(CardModel tarjeta) {
    this._tarjetas.add(tarjeta);
    notifyListeners();
  }
}
