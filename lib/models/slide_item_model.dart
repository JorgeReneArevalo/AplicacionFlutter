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
    required this.id,
  });

  String titulo;
  String imagen;
  int id;

  factory SlideItemModel.fromJson(Map<String, dynamic> json) => SlideItemModel(
        titulo: json["titulo"],
        imagen: json["imagen"],
        id: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "imagen": imagen,
        "index": id,
      };
}

List<SlideItemModel> slides = [
  SlideItemModel(
    titulo: 'Frase de la imagen uno',
    imagen: 'assets/disenio_uno/undraw_version_control_re_mg66.png',
    id: 0,
  ),
  SlideItemModel(
    titulo: 'Frase de la imagen dos',
    imagen: 'assets/disenio_uno/undraw_Mobile_inbox_re_ciwq.png',
    id: 1,
  ),
  SlideItemModel(
    titulo: 'Frase de la imagen tres',
    imagen: 'assets/disenio_uno/undraw_Hang_out_re_udl4.png',
    id: 2,
  ),
    SlideItemModel(
    titulo: 'Frase de la imagen cuatro',
    imagen: 'assets/disenio_uno/undraw_version_control_re_mg66.png',
    id: 3,
  ),

];
