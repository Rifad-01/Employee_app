import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:employee_app/core/failure/failure.dart';
import 'package:http/http.dart' as http;

abstract class AuthDataSource {
  Future<String> login({
    required String email,
    required String password,
  });
}

class AuthDataSourceImpl implements AuthDataSource {
  final http.Client client;
  const AuthDataSourceImpl({required this.client});
  @override
  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      final http.Response response = await client.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password},
        headers: {'x-api-key': 'reqres-free-v1'},
      );
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return result['token'];
      }
      throw UnknownFailure();
    } on UnauthorizedFailure {
      throw UnauthorizedFailure();
    } on SocketException {
      throw NetworkFailure();
    } on TimeoutException {
      throw TimeoutFailure();
    } catch (e) {
      throw UnauthorizedFailure();
    }
  }
}
