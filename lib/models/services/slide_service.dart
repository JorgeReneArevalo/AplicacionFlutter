import 'dart:convert';

import 'package:disenios_app/models/Responde/slide_responde_model.dart';
import 'package:http/http.dart' as http;

class SlideService {
  //Metodo va ser asincrono
  static Future<void>? getSlides() async {
    try {
      var respuesta= await http.get(Uri.parse("https://ac1a97a88092.ngrok.io/api/slide"));
      var jsonData = json.encode(respuesta.body);
      SlideResponseModel slideResponse=slideResponseModelFromJson(jsonData);
      print(slideResponse);
    } catch (error) {
      print(error);
    }
  }
}
