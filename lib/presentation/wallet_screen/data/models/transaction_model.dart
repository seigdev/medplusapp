// To parse this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

Transaction transactionFromJson(String str) =>
    Transaction.fromJson(json.decode(str));

String transactionToJson(Transaction data) => json.encode(data.toJson());

class Transaction {
  String? id;
  int? amount;
  String? user;
  String? transactionId;

  Transaction({
    this.id,
    this.amount,
    this.user,
    this.transactionId,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["_id"],
        amount: json["amount"],
        user: json["user"],
        transactionId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "amount": amount,
        "user": user,
        "id": transactionId,
      };
}
