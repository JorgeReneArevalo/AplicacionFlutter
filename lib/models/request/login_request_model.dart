// To parse this JSON data, do
//
//     final loginRequesModel = loginRequesModelFromJson(jsonString);

import 'dart:convert';

LoginRequesModel loginRequesModelFromJson(String str) =>
    LoginRequesModel.fromJson(json.decode(str));

String loginRequesModelToJson(LoginRequesModel data) =>
    json.encode(data.toJson());

class LoginRequesModel {
  LoginRequesModel({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory LoginRequesModel.fromJson(Map<String, dynamic> json) =>
      LoginRequesModel(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
