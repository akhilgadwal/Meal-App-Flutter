// To parse this JSON data, do
//
//     final mealsModel = mealsModelFromJson(jsonString);

import 'dart:convert';

MealsModel mealsModelFromJson(String str) =>
    MealsModel.fromJson(json.decode(str));
String mealsModelToJson(MealsModel data) => json.encode(data.toJson());

class MealsModel {
  List<Map<String, String?>> meals;

  MealsModel({
    required this.meals,
  });

  MealsModel copyWith({
    List<Map<String, String?>>? meals,
  }) =>
      MealsModel(
        meals: meals ?? this.meals,
      );

  factory MealsModel.fromJson(Map<String, dynamic> json) => MealsModel(
        meals: List<Map<String, String?>>.from(json["meals"].map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
