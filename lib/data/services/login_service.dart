import 'dart:convert';

import 'package:flutter_learn_basics/config/app_config.dart';
import 'package:flutter_learn_basics/data/responses/login_response.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final String? username;
  final String? password;

  LoginService({this.username, this.password});

  Future<LoginResponse> call() async {
    final result = await http.post(Uri.parse('${AppConfig.baseUrl}/login'),
        body: jsonEncode({'username': username, 'password': password}));

    return LoginResponse.fromJson(
      jsonDecode(result.body)['data'],
    );
  }
}
