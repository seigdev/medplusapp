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
  String? currency;
  DateTime? transactionDate;
  String? status;
  String? reference;
  String? gatewayResponse;
  String? channel;
  int? transactionType;
  int? paymentMethod;
  String? ipAddress;
  User? user;
  int? v;

  Transaction({
    this.id,
    this.amount,
    this.currency,
    this.transactionDate,
    this.status,
    this.reference,
    this.gatewayResponse,
    this.channel,
    this.transactionType,
    this.paymentMethod,
    this.ipAddress,
    this.user,
    this.v,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["_id"],
        amount: json["amount"],
        currency: json["currency"],
        transactionDate: json["transaction_date"] == null
            ? null
            : DateTime.parse(json["transaction_date"]),
        status: json["status"],
        reference: json["reference"],
        gatewayResponse: json["gateway_response"],
        channel: json["channel"],
        transactionType: json["transaction_type"],
        paymentMethod: json["payment_method"],
        ipAddress: json["ip_address"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "amount": amount,
        "currency": currency,
        "transaction_date": transactionDate?.toIso8601String(),
        "status": status,
        "reference": reference,
        "gateway_response": gatewayResponse,
        "channel": channel,
        "transaction_type": transactionType,
        "payment_method": paymentMethod,
        "ip_address": ipAddress,
        "user": user?.toJson(),
        "__v": v,
      };
}

class User {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? middleName;
  String? phoneNumber;
  List<String>? roles;
  int? status;
  List<dynamic>? services;
  String? profilePic;
  bool? twoFactorEnabled;
  bool? emailVerified;
  bool? phoneVerified;
  String? password;
  int? otpStatus;
  List<dynamic>? currentConditions;
  List<dynamic>? allergies;
  List<dynamic>? currentQualifications;
  List<dynamic>? currentPaperworks;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  DateTime? loginDate;
  String? city;
  String? country;
  String? state;
  String? address;
  DateTime? dateOfBirth;
  int? gender;
  String? bloodGroup;
  int? lastConfirmedPcv;
  int? steadyStatePcv;
  String? userId;

  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.middleName,
    this.phoneNumber,
    this.roles,
    this.status,
    this.services,
    this.profilePic,
    this.twoFactorEnabled,
    this.emailVerified,
    this.phoneVerified,
    this.password,
    this.otpStatus,
    this.currentConditions,
    this.allergies,
    this.currentQualifications,
    this.currentPaperworks,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.loginDate,
    this.city,
    this.country,
    this.state,
    this.address,
    this.dateOfBirth,
    this.gender,
    this.bloodGroup,
    this.lastConfirmedPcv,
    this.steadyStatePcv,
    this.userId,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        phoneNumber: json["phone_number"],
        roles: json["roles"] == null
            ? []
            : List<String>.from(json["roles"]!.map((x) => x)),
        status: json["status"],
        services: json["services"] == null
            ? []
            : List<dynamic>.from(json["services"]!.map((x) => x)),
        profilePic: json["profile_pic"],
        twoFactorEnabled: json["two_factor_enabled"],
        emailVerified: json["email_verified"],
        phoneVerified: json["phone_verified"],
        password: json["password"],
        otpStatus: json["otpStatus"],
        currentConditions: json["currentConditions"] == null
            ? []
            : List<dynamic>.from(json["currentConditions"]!.map((x) => x)),
        allergies: json["allergies"] == null
            ? []
            : List<dynamic>.from(json["allergies"]!.map((x) => x)),
        currentQualifications: json["currentQualifications"] == null
            ? []
            : List<dynamic>.from(json["currentQualifications"]!.map((x) => x)),
        currentPaperworks: json["currentPaperworks"] == null
            ? []
            : List<dynamic>.from(json["currentPaperworks"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        loginDate: json["login_Date"] == null
            ? null
            : DateTime.parse(json["login_Date"]),
        city: json["city"],
        country: json["country"],
        state: json["state"],
        address: json["address"],
        dateOfBirth: json["date_of_birth"] == null
            ? null
            : DateTime.parse(json["date_of_birth"]),
        gender: json["gender"],
        bloodGroup: json["bloodGroup"],
        lastConfirmedPcv: json["lastConfirmedPCV"],
        steadyStatePcv: json["steadyStatePCV"],
        userId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "phone_number": phoneNumber,
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x)),
        "status": status,
        "services":
            services == null ? [] : List<dynamic>.from(services!.map((x) => x)),
        "profile_pic": profilePic,
        "two_factor_enabled": twoFactorEnabled,
        "email_verified": emailVerified,
        "phone_verified": phoneVerified,
        "password": password,
        "otpStatus": otpStatus,
        "currentConditions": currentConditions == null
            ? []
            : List<dynamic>.from(currentConditions!.map((x) => x)),
        "allergies": allergies == null
            ? []
            : List<dynamic>.from(allergies!.map((x) => x)),
        "currentQualifications": currentQualifications == null
            ? []
            : List<dynamic>.from(currentQualifications!.map((x) => x)),
        "currentPaperworks": currentPaperworks == null
            ? []
            : List<dynamic>.from(currentPaperworks!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "login_Date": loginDate?.toIso8601String(),
        "city": city,
        "country": country,
        "state": state,
        "address": address,
        "date_of_birth":
            "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "bloodGroup": bloodGroup,
        "lastConfirmedPCV": lastConfirmedPcv,
        "steadyStatePCV": steadyStatePcv,
        "id": userId,
      };
}
