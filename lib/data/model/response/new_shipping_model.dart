// To parse this JSON data, do
//
//     final newShippingModel = newShippingModelFromJson(jsonString);

import 'dart:convert';

NewShippingModel newShippingModelFromJson(String str) => NewShippingModel.fromJson(json.decode(str));

String newShippingModelToJson(NewShippingModel data) => json.encode(data.toJson());

class NewShippingModel {
  final List<Datum>? data;

  NewShippingModel({
    this.data,
  });

  factory NewShippingModel.fromJson(Map<String, dynamic> json) => NewShippingModel(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final int? id;
  final int? creatorId;
  final String? creatorType;
  final String? title;
  final String? cost;
  final String? duration;
  final bool? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Datum({
    this.id,
    this.creatorId,
    this.creatorType,
    this.title,
    this.cost,
    this.duration,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    creatorId: json["creator_id"],
    creatorType: json["creator_type"],
    title: json["title"],
    cost: json["cost"],
    duration: json["duration"],
    status: json["status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "creator_id": creatorId,
    "creator_type": creatorType,
    "title": title,
    "cost": cost,
    "duration": duration,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
