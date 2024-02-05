import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/data/responses/login_response.dart';
import 'package:flutter_learn_basics/data/services/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username;
  var password;

  Future<LoginResponse> login() async {
    return LoginService(username: username, password: password).call();
  }
}
