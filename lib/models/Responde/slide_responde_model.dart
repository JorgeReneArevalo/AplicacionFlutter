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
       required this.slides,
    });

    bool ok;
    List<SlideItemModel> slides;

    factory SlideResponseModel.fromJson(Map<String, dynamic> json) => SlideResponseModel(
        ok: json["ok"],
        slides: List<SlideItemModel>.from(json["slides"].map((x) => SlideItemModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "slides": List<dynamic>.from(slides.map((x) => x.toJson())),
    };
}