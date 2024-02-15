// To parse this JSON data, do
//
//     final wallet = walletFromJson(jsonString);

import 'dart:convert';

Wallet walletFromJson(String str) => Wallet.fromJson(json.decode(str));

String walletToJson(Wallet data) => json.encode(data.toJson());

class Wallet {
  String? id;
  int? amount;
  bool? isLocked;
  String? user;
  List<dynamic>? cards;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? walletId;

  Wallet({
    this.id,
    this.amount,
    this.isLocked,
    this.user,
    this.cards,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.walletId,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        id: json["_id"],
        amount: json["amount"],
        isLocked: json["isLocked"],
        user: json["user"],
        cards: List<dynamic>.from(json["cards"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        walletId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "amount": amount,
        "isLocked": isLocked,
        "user": user,
        "cards": List<dynamic>.from(cards!.map((x) => x)),
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "__v": v,
        "id": walletId,
      };
}
