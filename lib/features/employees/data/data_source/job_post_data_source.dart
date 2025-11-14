import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:employee_app/core/failure/failure.dart';
import 'package:http/http.dart' as http;

abstract class JobPostDataSource {
  Future<String> jobPost({required String name, required String job});
}

class JobPostDataSourceImpl implements JobPostDataSource {
  final http.Client client;

  JobPostDataSourceImpl({required this.client});
  @override
  Future<String> jobPost({
    required String name,
    required String job,
  }) async {
    try {
      final http.Response response = await client.post(
        Uri.parse('https://reqres.in/api/users'),
        body: jsonEncode({'name': name, 'job': job}),
        headers: {'x-api-key': 'reqres-free-v1'},
      );
      if (response.statusCode == 201) {
        final result = jsonDecode(response.body);
        return result['id'];
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
