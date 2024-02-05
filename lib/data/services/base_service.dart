import 'dart:convert';
import 'package:flutter_learn_basics/config/app_config.dart';
import 'package:http/http.dart' as http;

abstract class BaseService<T> {
  Future<T> call();

  Uri _getV1Url(String url) => Uri.parse(AppConfig.baseUrl);

  Future<Map<String, dynamic>> get(String apiUrl, {String? token}) async {
    try {
      return _handleResponse(
          await HttpRequest(token: token).get(_getV1Url(apiUrl)));
    } catch (exception) {
      throw Exception(exception);
    }
  }

  Future<Map<String, dynamic>> post(
    String apiUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      final response = await HttpRequest(token: token).post(_getV1Url(apiUrl));

      return _handleResponse(response);
    } catch (exception) {
      throw Exception(exception);
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}

class HttpRequest extends http.BaseClient {
  final String? token;

  HttpRequest({this.token});

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }

    return request.send();
  }
}
