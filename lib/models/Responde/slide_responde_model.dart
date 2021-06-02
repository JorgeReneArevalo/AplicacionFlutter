// To parse this JSON data, do
//
//     final slideResponseModel = slideResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:disenios_app/models/slide_item_model.dart';

SlideResponseModel slideResponseModelFromJson(String str) => SlideResponseModel.fromJson(json.decode(str));

String slideResponseModelToJson(SlideResponseModel data) => json.encode(data.toJson());

class SlideResponseModel {
    SlideResponseModel({
       required this.ok,
       required this.paginas,
    });

    bool ok;
    List<SlideItemModel> paginas;

    factory SlideResponseModel.fromJson(Map<String, dynamic> json) => SlideResponseModel(
        ok: json["ok"],
        paginas: List<SlideItemModel>.from(json["paginas"].map((x) => SlideItemModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "paginas": List<dynamic>.from(paginas.map((x) => x.toJson())),
    };
}