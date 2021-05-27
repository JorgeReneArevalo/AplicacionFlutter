// To parse this JSON data, do
//
//     final slideItemModel = slideItemModelFromJson(jsonString);

import 'dart:convert';

SlideItemModel slideItemModelFromJson(String str) =>
    SlideItemModel.fromJson(json.decode(str));

String slideItemModelToJson(SlideItemModel data) => json.encode(data.toJson());

class SlideItemModel {
  SlideItemModel({
    required this.titulo,
    required this.imagen,
    required this.index,
  });

  String titulo;
  String imagen;
  int index;

  factory SlideItemModel.fromJson(Map<String, dynamic> json) => SlideItemModel(
        titulo: json["titulo"],
        imagen: json["imagen"],
        index: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "imagen": imagen,
        "index": index,
      };
}

List<SlideItemModel> slides = [
  SlideItemModel(
    titulo: 'Frase de la imagen uno',
    imagen: 'assets/disenio_uno/undraw_version_control_re_mg66.png',
    index: 0,
  ),
  SlideItemModel(
    titulo: 'Frase de la imagen dos',
    imagen: 'assets/disenio_uno/undraw_Mobile_inbox_re_ciwq.png',
    index: 1,
  ),
  SlideItemModel(
    titulo: 'Frase de la imagen tres',
    imagen: 'assets/disenio_uno/undraw_Hang_out_re_udl4.png',
    index: 2,
  ),

];
