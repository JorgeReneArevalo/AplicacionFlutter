import 'dart:convert';

import 'package:disenios_app/domain/utils/constantes.dart';
import 'package:disenios_app/models/Responde/slide_responde_model.dart';
import 'package:disenios_app/models/slide_item_model.dart';
import 'package:http/http.dart' as http;

class SlideService {
  //Metodo va ser asincrono
  static Future<List<SlideItemModel>>? getSlides() async {
    try {
      var respuesta = await http.get(Uri.parse(API_URL + "slide"));
      var jsonData = json.decode(respuesta.body);
//      SlideResponseModel slideResponse=slideResponseModelFromJson(jsonData);
      //print(jsonData);
      SlideResponseModel slideResponse = SlideResponseModel.fromJson(jsonData);
      if (slideResponse.ok) {
        return slideResponse.slides;
      } else {
        return [];
      }
      // print(slideResponse);
      // print(slideResponse.ok);
      // print(slideResponse.slides.length);
    } catch (error) {
      print(error);
      return [];
    }
  }
}
