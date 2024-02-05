import 'package:flutter_learn_basics/models/user.dart';

class LoginResponse {
  final User? user;
  final String? token;

  LoginResponse({this.user, this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: User.fromJson(json),
        token: json['token'],
      );
}
