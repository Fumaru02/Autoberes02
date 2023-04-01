import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNo,
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        email: data["email"],
        fullName: data["fullname"],
        phoneNo: data["phoneNo"],
        id: document.id);
  }
}
